module Units.Force exposing (Force, Newtons, newtons, inNewtons, kilonewtons, inKilonewtons, meganewtons, inMeganewtons, pounds, inPounds, kips, inKips)

{-| A `Force` value represents a force in newtons, pounds force etc. It is
stored as a number of newtons.

Note that since `Newtons` is defined as `Product Kilograms
MetersPerSecondSquared`, you can compute force directly as a product of mass and
acceleration:

    mass =
        Mass.kilograms 10

    acceleration =
        Acceleration.metersPerSecondSquared 2

    mass |> Quantity.times acceleration
    --> Force.newtons 20

@docs Force, Newtons


## Metric

@docs newtons, inNewtons, kilonewtons, inKilonewtons, meganewtons, inMeganewtons


## Imperial

@docs pounds, inPounds, kips, inKips

-}

import Acceleration
import Force
import Mass
import Quantity


{-| -}
type alias Force =
  Force.Force


{-| -}
type alias Newtons =
  Force.Newtons


{-| Construct a force value from a number of newtons.
-}
newtons : Float -> Force.Force
newtons =
  Force.newtons


{-| Convert a force value to a number of newtons.
-}
inNewtons : Force.Force -> Float
inNewtons =
  Force.inNewtons


{-| Construct a force value from a number of kilonewtons.
-}
kilonewtons : Float -> Force.Force
kilonewtons =
  Force.kilonewtons


{-| Convert a force value to a number of kilonewtons.
-}
inKilonewtons : Force.Force -> Float
inKilonewtons =
  Force.inKilonewtons


{-| Construct a force value from a number of meganewtons.
-}
meganewtons : Float -> Force.Force
meganewtons =
  Force.meganewtons


{-| Convert a force value to a number of meganewtons.
-}
inMeganewtons : Force.Force -> Float
inMeganewtons =
  Force.inMeganewtons


{-| Construct a force value from a number of pounds force. One pound force is
the force required to accelerate one [pound mass][1] at a rate of [one gee][2].

[1]: Mass#pounds
[2]: Acceleration#gees

-}
pounds : Float -> Force.Force
pounds =
  Force.pounds


{-| Convert a force value to a number of pounds force.
-}
inPounds : Force.Force -> Float
inPounds =
  Force.inPounds


{-| Construct a force value from a number of kips (kilopounds force).

    Force.kips 2
    --> Force.pounds 2000

-}
kips : Float -> Force.Force
kips =
  Force.kips


{-| Convert a force value to a number of kips.
-}
inKips : Force.Force -> Float
inKips =
  Force.inKips