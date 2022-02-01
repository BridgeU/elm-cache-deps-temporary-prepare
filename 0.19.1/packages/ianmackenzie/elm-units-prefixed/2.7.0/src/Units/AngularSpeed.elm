module Units.AngularSpeed exposing (AngularSpeed, RadiansPerSecond, radiansPerSecond, inRadiansPerSecond, degreesPerSecond, inDegreesPerSecond, turnsPerSecond, inTurnsPerSecond, turnsPerMinute, inTurnsPerMinute, revolutionsPerSecond, inRevolutionsPerSecond, revolutionsPerMinute, inRevolutionsPerMinute)

{-| An `AngularSpeed` represents a rotation rate in radians per second, degrees
per second, turns (revolutions) per second or turns (revolutions) per minute.
It is stored as a number of radians per second.

Note that since `RadiansPerSecond` is defined as `Rate Radians Seconds` (angle
per unit time), you can construct an `AngularSpeed` value using `Quantity.per`:

    angularSpeed =
        angle |> Quantity.per duration

You can also do rate-related calculations with `AngularSpeed` values to compute
`Angle` or `Duration`:

    angle =
        angularSpeed |> Quantity.for duration

    alsoAngle =
        duration |> Quantity.at angularSpeed

    duration =
        angle |> Quantity.at_ angularSpeed

@docs AngularSpeed, RadiansPerSecond


## Conversions

@docs radiansPerSecond, inRadiansPerSecond, degreesPerSecond, inDegreesPerSecond
@docs turnsPerSecond, inTurnsPerSecond, turnsPerMinute, inTurnsPerMinute


## Aliases for `turns` as `revolutions`

The Elm core `Basics` module uses `turns` in its [Angle Conversions](https://package.elm-lang.org/packages/elm-lang/core/latest/Basics#angle-conversions).
To be consistent, this module also uses `turns`, however since 'revolutions per
minute' (RPM) is in common usage, several aliases are provided.

@docs revolutionsPerSecond, inRevolutionsPerSecond, revolutionsPerMinute, inRevolutionsPerMinute

-}

import Angle
import AngularSpeed
import Duration
import Quantity


{-| -}
type alias AngularSpeed =
  AngularSpeed.AngularSpeed


{-| -}
type alias RadiansPerSecond =
  AngularSpeed.RadiansPerSecond


{-| Construct an angular speed from a number of radians per second.
-}
radiansPerSecond : Float -> AngularSpeed.AngularSpeed
radiansPerSecond =
  AngularSpeed.radiansPerSecond


{-| Convert an angular speed to a number of radians per second.
-}
inRadiansPerSecond : AngularSpeed.AngularSpeed -> Float
inRadiansPerSecond =
  AngularSpeed.inRadiansPerSecond


{-| Construct an angular speed from a number of degrees per second.
-}
degreesPerSecond : Float -> AngularSpeed.AngularSpeed
degreesPerSecond =
  AngularSpeed.degreesPerSecond


{-| Convert an angular speed to a number of degrees per second.
-}
inDegreesPerSecond : AngularSpeed.AngularSpeed -> Float
inDegreesPerSecond =
  AngularSpeed.inDegreesPerSecond


{-| Construct an angular speed from a number of turns per second.
-}
turnsPerSecond : Float -> AngularSpeed.AngularSpeed
turnsPerSecond =
  AngularSpeed.turnsPerSecond


{-| Convert an angular speed to a number of turns per second.
-}
inTurnsPerSecond : AngularSpeed.AngularSpeed -> Float
inTurnsPerSecond =
  AngularSpeed.inTurnsPerSecond


{-| Construct an angular speed from a number of turns per minute.
-}
turnsPerMinute : Float -> AngularSpeed.AngularSpeed
turnsPerMinute =
  AngularSpeed.turnsPerMinute


{-| Convert an angular speed to a number of turns per minute.
-}
inTurnsPerMinute : AngularSpeed.AngularSpeed -> Float
inTurnsPerMinute =
  AngularSpeed.inTurnsPerMinute


{-| Alias for `turnsPerSecond`.
-}
revolutionsPerSecond : Float -> AngularSpeed.AngularSpeed
revolutionsPerSecond =
  AngularSpeed.revolutionsPerSecond


{-| Alias for `inTurnsPerSecond`.
-}
inRevolutionsPerSecond : AngularSpeed.AngularSpeed -> Float
inRevolutionsPerSecond =
  AngularSpeed.inRevolutionsPerSecond


{-| Alias for `turnsPerMinute`.
-}
revolutionsPerMinute : Float -> AngularSpeed.AngularSpeed
revolutionsPerMinute =
  AngularSpeed.revolutionsPerMinute


{-| Alias for `inTurnsPerMinute`.
-}
inRevolutionsPerMinute : AngularSpeed.AngularSpeed -> Float
inRevolutionsPerMinute =
  AngularSpeed.inRevolutionsPerMinute