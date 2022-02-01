module Units.AngularAcceleration exposing (AngularAcceleration, RadiansPerSecondSquared, radiansPerSecondSquared, inRadiansPerSecondSquared, degreesPerSecondSquared, inDegreesPerSecondSquared, turnsPerSecondSquared, inTurnsPerSecondSquared)

{-| An `AngularAcceleration` represents an angular acceleration in radians per
second squared, degrees per second squared, and turns per second squared. It is
stored as a number of radians per second squared.

Note that since `RadiansPerSecondSquared` is defined as `Rate RadiansPerSecond
Seconds` (change in angular speed per unit time), you can construct an
`AngularAcceleration` value using `Quantity.per`:

    angularAcceleration =
        changeInAngularSpeed |> Quantity.per duration

You can also do rate-related calculations with `AngularAcceleration` values to
compute `AngularSpeed` or `Duration`:

    changeInAngularSpeed =
        angularAcceleration |> Quantity.for duration

    alsoChangeInAngularSpeed =
        duration |> Quantity.at angularAcceleration

    duration =
        changeInAngularSpeed |> Quantity.at_ angularAcceleration

@docs AngularAcceleration, RadiansPerSecondSquared


## Conversions

@docs radiansPerSecondSquared, inRadiansPerSecondSquared, degreesPerSecondSquared, inDegreesPerSecondSquared
@docs turnsPerSecondSquared, inTurnsPerSecondSquared

-}

import AngularAcceleration
import AngularSpeed
import Duration
import Quantity


{-| -}
type alias AngularAcceleration =
  AngularAcceleration.AngularAcceleration


{-| -}
type alias RadiansPerSecondSquared =
  AngularAcceleration.RadiansPerSecondSquared


{-| Construct an angular acceleration from a number of radians per second squared.
-}
radiansPerSecondSquared : Float -> AngularAcceleration.AngularAcceleration
radiansPerSecondSquared =
  AngularAcceleration.radiansPerSecondSquared


{-| Convert an angular acceleration to a number of radians per second squared.
-}
inRadiansPerSecondSquared : AngularAcceleration.AngularAcceleration -> Float
inRadiansPerSecondSquared =
  AngularAcceleration.inRadiansPerSecondSquared


{-| Construct an angular acceleration from a number of degrees per second squared.
-}
degreesPerSecondSquared : Float -> AngularAcceleration.AngularAcceleration
degreesPerSecondSquared =
  AngularAcceleration.degreesPerSecondSquared


{-| Convert an angular acceleration to a number of degrees per second squared.
-}
inDegreesPerSecondSquared : AngularAcceleration.AngularAcceleration -> Float
inDegreesPerSecondSquared =
  AngularAcceleration.inDegreesPerSecondSquared


{-| Construct an angular acceleration from a number of turns per second squared.
-}
turnsPerSecondSquared : Float -> AngularAcceleration.AngularAcceleration
turnsPerSecondSquared =
  AngularAcceleration.turnsPerSecondSquared


{-| Convert an angular acceleration to a number of turns per second squared.
-}
inTurnsPerSecondSquared : AngularAcceleration.AngularAcceleration -> Float
inTurnsPerSecondSquared =
  AngularAcceleration.inTurnsPerSecondSquared