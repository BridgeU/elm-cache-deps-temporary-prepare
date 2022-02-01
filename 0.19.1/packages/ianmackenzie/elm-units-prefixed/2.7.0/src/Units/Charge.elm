module Units.Charge exposing (Charge, Coulombs, coulombs, inCoulombs, ampereHours, inAmpereHours, milliampereHours, inMilliampereHours)

{-| A `Charge` value represents an electrical charge in coulombs or ampere
hours. It is stored as a number of coulombs.

@docs Charge, Coulombs


## Conversions

@docs coulombs, inCoulombs, ampereHours, inAmpereHours, milliampereHours, inMilliampereHours

-}

import Charge
import Quantity


{-| -}
type alias Charge =
  Charge.Charge


{-| -}
type alias Coulombs =
  Charge.Coulombs


{-| Construct a charge from a number of coulombs.
-}
coulombs : Float -> Charge.Charge
coulombs =
  Charge.coulombs


{-| Convert a charge to a number of coulombs.
-}
inCoulombs : Charge.Charge -> Float
inCoulombs =
  Charge.inCoulombs


{-| Construct a charge from a number of ampere hours.
-}
ampereHours : Float -> Charge.Charge
ampereHours =
  Charge.ampereHours


{-| Convert a charge to a number of ampere hours.
-}
inAmpereHours : Charge.Charge -> Float
inAmpereHours =
  Charge.inAmpereHours


{-| Construct a charge from a number of milliampere hours.
-}
milliampereHours : Float -> Charge.Charge
milliampereHours =
  Charge.milliampereHours


{-| Convert a charge to a number of milliampere hours.
-}
inMilliampereHours : Charge.Charge -> Float
inMilliampereHours =
  Charge.inMilliampereHours