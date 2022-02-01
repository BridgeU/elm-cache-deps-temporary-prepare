module Units.Acceleration exposing (Acceleration, MetersPerSecondSquared, metersPerSecondSquared, inMetersPerSecondSquared, feetPerSecondSquared, inFeetPerSecondSquared, gees, inGees)

{-| An `Acceleration` represents an acceleration in meters per second squared,
feet per second squared or [gees][1]. It is stored as a number of meters per
second squared.

Note that since `MetersPerSecondSquared` is defined as `Rate MetersPerSecond
Seconds` (change in speed per unit time), you can construct an `Acceleration`
value using `Quantity.per`:

    acceleration =
        changeInSpeed |> Quantity.per duration

You can also do rate-related calculations with `Acceleration` values to compute
`Speed` or `Duration`:

    changeInSpeed =
        acceleration |> Quantity.for duration

    alsoChangeInSpeed =
        duration |> Quantity.at acceleration

    duration =
        changeInSpeed |> Quantity.at_ acceleration

[1]: https://en.wikipedia.org/wiki/G-force#Unit_and_measurement

@docs Acceleration, MetersPerSecondSquared


## Metric

@docs metersPerSecondSquared, inMetersPerSecondSquared


## Imperial

@docs feetPerSecondSquared, inFeetPerSecondSquared


## Gravitational

@docs gees, inGees

-}

import Acceleration
import Duration
import Quantity
import Speed


{-| -}
type alias Acceleration =
  Acceleration.Acceleration


{-| -}
type alias MetersPerSecondSquared =
  Acceleration.MetersPerSecondSquared


{-| Construct an acceleration from a number of meters per second squared.
-}
metersPerSecondSquared : Float -> Acceleration.Acceleration
metersPerSecondSquared =
  Acceleration.metersPerSecondSquared


{-| Convert an acceleration to a number of meters per second squared.
-}
inMetersPerSecondSquared : Acceleration.Acceleration -> Float
inMetersPerSecondSquared =
  Acceleration.inMetersPerSecondSquared


{-| Construct an acceleration from a number of feet per second squared.
-}
feetPerSecondSquared : Float -> Acceleration.Acceleration
feetPerSecondSquared =
  Acceleration.feetPerSecondSquared


{-| Convert an acceleration to a number of feet per second squared.
-}
inFeetPerSecondSquared : Acceleration.Acceleration -> Float
inFeetPerSecondSquared =
  Acceleration.inFeetPerSecondSquared


{-| Construct an acceleration from a number of [gees][1]. One gee is equal to
9.80665 meters per second squared (the standard acceleration due to gravity).

    Acceleration.gees 1
    --> Acceleration.metersPerSecondSquared 9.80665

[1]: https://en.wikipedia.org/wiki/G-force#Unit_and_measurement

-}
gees : Float -> Acceleration.Acceleration
gees =
  Acceleration.gees


{-| Convert an acceleration to a number of gees.
-}
inGees : Acceleration.Acceleration -> Float
inGees =
  Acceleration.inGees