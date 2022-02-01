module Units.Molarity exposing (Molarity, MolesPerCubicMeter, molesPerCubicMeter, inMolesPerCubicMeter, molesPerLiter, inMolesPerLiter, decimolesPerLiter, inDecimolesPerLiter, centimolesPerLiter, inCentimolesPerLiter, millimolesPerLiter, inMillimolesPerLiter, micromolesPerLiter, inMicromolesPerLiter)

{-| A `Molarity` value represents a concentration of substance in moles per
cubic meter, moles per liter, millimoles per liter etc. It is stored as a number
of moles per cubic meter.

Note that the [NIST Guide to the
SI](https://www.nist.gov/pml/special-publication-811/nist-guide-si-chapter-8)
states that the term "molarity" is considered obsolete, but it appears to still
be in common use and is far less verbose than the alternative NIST suggestion of
"amount-of-substance concentration".

Since the units of `Molarity` are defined to be `Rate Moles CubicMeters` (amount
of substance per unit volume), you can construct a `Molarity` value using
`Quantity.per`:

    molarity =
        substanceAmount |> Quantity.per volume

You can also do rate-related calculations with `Molarity` values to compute
`SubstanceAmount` or `Volume`:

    substanceAmount =
        volume |> Quantity.at molarity

    volume =
        substanceAmount |> Quantity.at_ molarity

@docs Molarity, MolesPerCubicMeter
@docs molesPerCubicMeter, inMolesPerCubicMeter
@docs molesPerLiter, inMolesPerLiter
@docs decimolesPerLiter, inDecimolesPerLiter
@docs centimolesPerLiter, inCentimolesPerLiter
@docs millimolesPerLiter, inMillimolesPerLiter
@docs micromolesPerLiter, inMicromolesPerLiter

-}

import Molarity
import Quantity
import SubstanceAmount
import Volume


{-| -}
type alias Molarity =
  Molarity.Molarity


{-| -}
type alias MolesPerCubicMeter =
  Molarity.MolesPerCubicMeter


{-| Construct a molarity from a number of moles per cubic meter.
-}
molesPerCubicMeter : Float -> Molarity.Molarity
molesPerCubicMeter =
  Molarity.molesPerCubicMeter


{-| Convert a molarity to a number of moles per cubic meter.
-}
inMolesPerCubicMeter : Molarity.Molarity -> Float
inMolesPerCubicMeter =
  Molarity.inMolesPerCubicMeter


{-| Construct a molarity from a number of moles per liter.
-}
molesPerLiter : Float -> Molarity.Molarity
molesPerLiter =
  Molarity.molesPerLiter


{-| Convert a molarity to a number of moles per liter.
-}
inMolesPerLiter : Molarity.Molarity -> Float
inMolesPerLiter =
  Molarity.inMolesPerLiter


{-| Construct a molarity from a number of decimoles per liter.
-}
decimolesPerLiter : Float -> Molarity.Molarity
decimolesPerLiter =
  Molarity.decimolesPerLiter


{-| Convert a molarity to a number of decimoles per liter.
-}
inDecimolesPerLiter : Molarity.Molarity -> Float
inDecimolesPerLiter =
  Molarity.inDecimolesPerLiter


{-| Construct a molarity from a number of centimoles per liter.
-}
centimolesPerLiter : Float -> Molarity.Molarity
centimolesPerLiter =
  Molarity.centimolesPerLiter


{-| Convert a molarity to a number of centimoles per liter.
-}
inCentimolesPerLiter : Molarity.Molarity -> Float
inCentimolesPerLiter =
  Molarity.inCentimolesPerLiter


{-| Construct a molarity from a number of millimoles per liter.
-}
millimolesPerLiter : Float -> Molarity.Molarity
millimolesPerLiter =
  Molarity.millimolesPerLiter


{-| Convert a molarity to a number of millimoles per liter.
-}
inMillimolesPerLiter : Molarity.Molarity -> Float
inMillimolesPerLiter =
  Molarity.inMillimolesPerLiter


{-| Construct a molarity from a number of micromoles per liter.
-}
micromolesPerLiter : Float -> Molarity.Molarity
micromolesPerLiter =
  Molarity.micromolesPerLiter


{-| Convert a molarity to a number of micromoles per liter.
-}
inMicromolesPerLiter : Molarity.Molarity -> Float
inMicromolesPerLiter =
  Molarity.inMicromolesPerLiter