module Units.Speed exposing (Speed, MetersPerSecond, metersPerSecond, inMetersPerSecond, kilometersPerHour, inKilometersPerHour, feetPerSecond, inFeetPerSecond, milesPerHour, inMilesPerHour)

{-| A `Speed` value represents a speed in meters per second, miles per hour etc.
It is stored as a number of meters per second.

Note that since `MetersPerSecond` is defined as `Rate Meters Seconds` (length
per unit time), you can construct a `Speed` value using `Quantity.per`:

    speed =
        length |> Quantity.per duration

You can also do rate-related calculations with `Speed` values to compute
`Length` or `Duration`:

    length =
        speed |> Quantity.for duration

    alsoLength =
        duration |> Quantity.at speed

    duration =
        length |> Quantity.at_ speed

@docs Speed, MetersPerSecond


## Metric

@docs metersPerSecond, inMetersPerSecond, kilometersPerHour, inKilometersPerHour


## Imperial

@docs feetPerSecond, inFeetPerSecond, milesPerHour, inMilesPerHour

-}

import Duration
import Length
import Quantity
import Speed


{-| -}
type alias Speed =
  Speed.Speed


{-| -}
type alias MetersPerSecond =
  Speed.MetersPerSecond


{-| Construct a speed from a number of meters per second.
-}
metersPerSecond : Float -> Speed.Speed
metersPerSecond =
  Speed.metersPerSecond


{-| Convert a speed to a number of meters per second.
-}
inMetersPerSecond : Speed.Speed -> Float
inMetersPerSecond =
  Speed.inMetersPerSecond


{-| Construct a speed from a number of kilometers per hour.
-}
kilometersPerHour : Float -> Speed.Speed
kilometersPerHour =
  Speed.kilometersPerHour


{-| Convert a speed to a number of kilometers per hour.
-}
inKilometersPerHour : Speed.Speed -> Float
inKilometersPerHour =
  Speed.inKilometersPerHour


{-| Construct a speed from a number of feet per second.
-}
feetPerSecond : Float -> Speed.Speed
feetPerSecond =
  Speed.feetPerSecond


{-| Convert a speed to a number of feet per second.
-}
inFeetPerSecond : Speed.Speed -> Float
inFeetPerSecond =
  Speed.inFeetPerSecond


{-| Construct a speed from a number of miles per hour.
-}
milesPerHour : Float -> Speed.Speed
milesPerHour =
  Speed.milesPerHour


{-| Convert a speed to a number of miles per hour.
-}
inMilesPerHour : Speed.Speed -> Float
inMilesPerHour =
  Speed.inMilesPerHour