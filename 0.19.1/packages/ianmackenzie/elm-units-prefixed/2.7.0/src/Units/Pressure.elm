module Units.Pressure exposing (Pressure, Pascals, pascals, inPascals, kilopascals, inKilopascals, megapascals, inMegapascals, poundsPerSquareInch, inPoundsPerSquareInch, atmospheres, inAtmospheres)

{-| A `Pressure` value represents a pressure in kilopascals, pounds per square
inch, [atmospheres][1] etc. It is stored as a number of pascals.

Note that since `Pascals` is defined as `Rate Newtons SquareMeters` (force per
unit area), you can construct a `Pressure` value using `Quantity.per`:

    pressure =
        force |> Quantity.per area

You can also do rate-related calculations with `Pressure` values to compute
`Force` or `Area`:

    force =
        area |> Quantity.at pressure

    area =
        force |> Quantity.at_ pressure

[1]: https://en.wikipedia.org/wiki/Atmosphere_(unit)

@docs Pressure, Pascals


## Metric

@docs pascals, inPascals, kilopascals, inKilopascals, megapascals, inMegapascals


## Imperial

@docs poundsPerSquareInch, inPoundsPerSquareInch


## Atmospheric

@docs atmospheres, inAtmospheres

-}

import Area
import Force
import Pressure
import Quantity


{-| -}
type alias Pressure =
  Pressure.Pressure


{-| -}
type alias Pascals =
  Pressure.Pascals


{-| Construct a pressure from a number of pascals.
-}
pascals : Float -> Pressure.Pressure
pascals =
  Pressure.pascals


{-| Convert a pressure to a number of pascals.
-}
inPascals : Pressure.Pressure -> Float
inPascals =
  Pressure.inPascals


{-| Construct a pressure from a number of kilopascals.
-}
kilopascals : Float -> Pressure.Pressure
kilopascals =
  Pressure.kilopascals


{-| Convert a pressure to a number of kilopascals.
-}
inKilopascals : Pressure.Pressure -> Float
inKilopascals =
  Pressure.inKilopascals


{-| Construct a pressure from a number of megapascals.
-}
megapascals : Float -> Pressure.Pressure
megapascals =
  Pressure.megapascals


{-| Convert a pressure to a number of megapascals.
-}
inMegapascals : Pressure.Pressure -> Float
inMegapascals =
  Pressure.inMegapascals


{-| Construct a pressure from a number of pounds per square inch.
-}
poundsPerSquareInch : Float -> Pressure.Pressure
poundsPerSquareInch =
  Pressure.poundsPerSquareInch


{-| Convert a pressure to a number of pounds per square inch.
-}
inPoundsPerSquareInch : Pressure.Pressure -> Float
inPoundsPerSquareInch =
  Pressure.inPoundsPerSquareInch


{-| Construct a pressure from a number of [atmospheres][1].

[1]: https://en.wikipedia.org/wiki/Atmosphere_(unit)

-}
atmospheres : Float -> Pressure.Pressure
atmospheres =
  Pressure.atmospheres


{-| Convert a pressure to a number of atmospheres.
-}
inAtmospheres : Pressure.Pressure -> Float
inAtmospheres =
  Pressure.inAtmospheres