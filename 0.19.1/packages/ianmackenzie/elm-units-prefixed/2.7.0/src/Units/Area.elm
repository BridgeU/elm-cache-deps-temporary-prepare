module Units.Area exposing (Area, SquareMeters, squareMeters, inSquareMeters, squareMillimeters, inSquareMillimeters, squareCentimeters, inSquareCentimeters, hectares, inHectares, squareKilometers, inSquareKilometers, squareInches, inSquareInches, squareFeet, inSquareFeet, squareYards, inSquareYards, acres, inAcres, squareMiles, inSquareMiles, squareMeter, squareMillimeter, squareCentimeter, hectare, squareKilometer, squareInch, squareFoot, squareYard, acre, squareMile)

{-| An `Area` represents an area in square meters, square feet, acres, hectares
etc. It is stored as a number of square meters.

Note that you can construct an `Area` value directly using the functions in this
module, but it also works to call [`Quantity.squared`](Quantity#squared) on a
`Length` or [`Quantity.times`](Quantity#times) on a pair of `Length`s. The
following are all equivalent:

    Area.squareFeet 100

    Quantity.squared (Length.feet 10)

    Length.feet 25 |> Quantity.times (Length.feet 4)

@docs Area, SquareMeters


## Metric

@docs squareMeters, inSquareMeters
@docs squareMillimeters, inSquareMillimeters, squareCentimeters, inSquareCentimeters, hectares, inHectares, squareKilometers, inSquareKilometers


## Imperial

@docs squareInches, inSquareInches, squareFeet, inSquareFeet, squareYards, inSquareYards, acres, inAcres, squareMiles, inSquareMiles


## Constants

Shorthand for `Area.squareMeters 1`, `Area.acres 1` etc. Can be convenient to
use with [`Quantity.per`](Quantity#per).

@docs squareMeter, squareMillimeter, squareCentimeter, hectare, squareKilometer
@docs squareInch, squareFoot, squareYard, acre, squareMile

-}

import Area
import Length
import Quantity


{-| -}
type alias Area =
  Area.Area


{-| -}
type alias SquareMeters =
  Area.SquareMeters


{-| Construct an area from a number of square meters.
-}
squareMeters : Float -> Area.Area
squareMeters =
  Area.squareMeters


{-| Convert an area to a number of square meters.
-}
inSquareMeters : Area.Area -> Float
inSquareMeters =
  Area.inSquareMeters


{-| Construct an area from a number of square millimeters.
-}
squareMillimeters : Float -> Area.Area
squareMillimeters =
  Area.squareMillimeters


{-| Convert an area to a number of square millimeters.
-}
inSquareMillimeters : Area.Area -> Float
inSquareMillimeters =
  Area.inSquareMillimeters


{-| Construct an area from a number of square centimeters.
-}
squareCentimeters : Float -> Area.Area
squareCentimeters =
  Area.squareCentimeters


{-| Convert an area to a number of square centimeters.
-}
inSquareCentimeters : Area.Area -> Float
inSquareCentimeters =
  Area.inSquareCentimeters


{-| Construct an area from a number of hectares.
-}
hectares : Float -> Area.Area
hectares =
  Area.hectares


{-| Convert an area to a number of hectares.
-}
inHectares : Area.Area -> Float
inHectares =
  Area.inHectares


{-| Construct an area from a number of square kilometers.
-}
squareKilometers : Float -> Area.Area
squareKilometers =
  Area.squareKilometers


{-| Convert an area to a number of square kilometers.
-}
inSquareKilometers : Area.Area -> Float
inSquareKilometers =
  Area.inSquareKilometers


{-| Construct an area from a number of square inches.
-}
squareInches : Float -> Area.Area
squareInches =
  Area.squareInches


{-| Convert an area to a number of square inches.
-}
inSquareInches : Area.Area -> Float
inSquareInches =
  Area.inSquareInches


{-| Construct an area from a number of square feet.
-}
squareFeet : Float -> Area.Area
squareFeet =
  Area.squareFeet


{-| Convert an area to a number of square feet.
-}
inSquareFeet : Area.Area -> Float
inSquareFeet =
  Area.inSquareFeet


{-| Construct an area from a number of square yards.
-}
squareYards : Float -> Area.Area
squareYards =
  Area.squareYards


{-| Convert an area to a number of square yards.
-}
inSquareYards : Area.Area -> Float
inSquareYards =
  Area.inSquareYards


{-| Construct an area from a number of acres.
-}
acres : Float -> Area.Area
acres =
  Area.acres


{-| Convert an area to a number of acres.
-}
inAcres : Area.Area -> Float
inAcres =
  Area.inAcres


{-| Construct an area from a number of square miles.
-}
squareMiles : Float -> Area.Area
squareMiles =
  Area.squareMiles


{-| Convert an area to a number of square miles.
-}
inSquareMiles : Area.Area -> Float
inSquareMiles =
  Area.inSquareMiles


{-| -}
squareMeter : Area.Area
squareMeter =
  Area.squareMeter


{-| -}
squareMillimeter : Area.Area
squareMillimeter =
  Area.squareMillimeter


{-| -}
squareCentimeter : Area.Area
squareCentimeter =
  Area.squareCentimeter


{-| -}
hectare : Area.Area
hectare =
  Area.hectare


{-| -}
squareKilometer : Area.Area
squareKilometer =
  Area.squareKilometer


{-| -}
squareInch : Area.Area
squareInch =
  Area.squareInch


{-| -}
squareFoot : Area.Area
squareFoot =
  Area.squareFoot


{-| -}
squareYard : Area.Area
squareYard =
  Area.squareYard


{-| -}
acre : Area.Area
acre =
  Area.acre


{-| -}
squareMile : Area.Area
squareMile =
  Area.squareMile