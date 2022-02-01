module Elm.Type exposing
  ( Type(..)
  , decoder
  )

{-| This is specifically for handling the types that appear in
documentation generated by `elm-make`. If you are looking to parse
arbitrary type signatures with creative indentation (e.g. newlines
and comments) this library will not do what you want. Instead,
check out the source code and go from there. It's not too tough!

@docs Type, decoder

-}

import Char
import Json.Decode as Decode exposing (Decoder)
import Parser exposing (..)
import Set
import String



-- TYPES


{-| Represent Elm types as values! Here are some examples:

    Int            ==> Type "Int" []

    a -> b         ==> Lambda (Var "a") (Var "b")

    ( a, b )       ==> Tuple [ Var "a", Var "b" ]

    Maybe a        ==> Type "Maybe" [ Var "a" ]

    { x : Float }  ==> Record [("x", Type "Float" [])] Nothing
-}
type Type
  = Var String
  | Lambda Type Type
  | Tuple (List Type)
  | Type String (List Type)
  | Record (List (String, Type)) (Maybe String)



-- DECODE


{-| Decode the JSON representation of `Type` values.
-}
decoder : Decoder Type
decoder =
  Decode.andThen decoderHelp Decode.string


decoderHelp : String -> Decoder Type
decoderHelp string =
  case parse string of
    Err error ->
      Decode.fail "TODO"

    Ok actualType ->
      Decode.succeed actualType



-- PARSE TYPES


parse : String -> Result (List DeadEnd) Type
parse source =
  Parser.run tipe source



-- FUNCTIONS


tipe : Parser Type
tipe =
  lazy <| \_ ->
    andThen tipeHelp tipeTerm


tipeHelp : Type -> Parser Type
tipeHelp t =
  oneOf
    [ map (Lambda t) arrowAndType
    , succeed t
    ]


arrowAndType : Parser Type
arrowAndType =
  succeed identity
    |. backtrackable spaces
    |. arrow
    |. spaces
    |= tipe


arrow : Parser ()
arrow =
  symbol "->"


tipeTerm : Parser Type
tipeTerm =
  oneOf
    [ map Var lowVar
    , succeed Type
        |= qualifiedCapVar
        |= loop [] chompArgs
    , record
    , tuple
    ]


chompArgs : List Type -> Parser (Step (List Type) (List Type))
chompArgs revArgs =
  oneOf
    [ succeed identity
        |. backtrackable spaces
        |= term
        |> map (\arg -> Loop (arg :: revArgs))
    , map (\_ -> Done (List.reverse revArgs)) (succeed ())
    ]


term : Parser Type
term =
  oneOf
    [ map Var lowVar
    , map (\name -> Type name []) qualifiedCapVar
    , record
    , tuple
    ]



-- RECORDS


record : Parser Type
record =
  succeed (\ext fs -> Record fs ext)
    |. symbol "{"
    |. spaces
    |= extension
    |= recordEnd


extension : Parser (Maybe String)
extension =
  oneOf
    [ succeed Just
        |= backtrackable lowVar
        |. backtrackable spaces
        |. symbol "|"
        |. spaces
    , succeed Nothing
    ]



field : Parser (String, Type)
field =
  succeed Tuple.pair
    |= lowVar
    |. spaces
    |. symbol ":"
    |. spaces
    |= tipe


type alias Fields = List (String, Type)


recordEnd : Parser Fields
recordEnd =
  oneOf
    [ field
        |. spaces
        |> andThen (\f -> loop [f] recordEndHelp)
    , succeed []
        |. symbol "}"
    ]


recordEndHelp : Fields -> Parser (Step Fields Fields)
recordEndHelp revFields =
  oneOf
    [ succeed (\f -> Loop (f :: revFields))
        |. comma
        |. spaces
        |= field
        |. spaces
    , succeed (\_ -> Done (List.reverse revFields))
        |= symbol "}"
    ]



-- TUPLE


tuple : Parser Type
tuple =
  map tuplize <|
    sequence
      { start = "("
      , separator = ","
      , end = ")"
      , spaces = spaces
      , item = tipe
      , trailing = Forbidden
      }



tuplize : List Type -> Type
tuplize args =
  case args of
    [arg] ->
      arg

    _ ->
      Tuple args



-- VAR HELPERS


lowVar : Parser String
lowVar =
  var Char.isLower


capVar : Parser String
capVar =
  var Char.isUpper


isInnerVarChar : Char -> Bool
isInnerVarChar char =
  Char.isAlphaNum char || char == '_'


qualifiedCapVar : Parser String
qualifiedCapVar =
  getChompedString <|
    capVar
      |. loop () qualifiedCapVarHelp

qualifiedCapVarHelp : () -> Parser (Step () ())
qualifiedCapVarHelp _ =
  oneOf
    [ succeed (Loop ())
        |. symbol "."
        |. capVar
    , succeed (Done ())
    ]


var : (Char -> Bool) -> Parser String
var isFirst =
  variable
    { start = isFirst
    , inner = isInnerVarChar
    , reserved = Set.empty
    }



-- HELPERS


spaces : Parser ()
spaces =
  chompWhile (\char -> char == ' ')


comma : Parser ()
comma =
  symbol ","