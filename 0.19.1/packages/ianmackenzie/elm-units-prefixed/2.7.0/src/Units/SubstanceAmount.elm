module Units.SubstanceAmount exposing (SubstanceAmount, Moles, moles, inMoles, picomoles, inPicomoles, nanomoles, inNanomoles, micromoles, inMicromoles, millimoles, inMillimoles, centimoles, inCentimoles, decimoles, inDecimoles, kilomoles, inKilomoles, megamoles, inMegamoles, gigamoles, inGigamoles)

{-| A `SubstanceAmount` value represents a substance amount in [moles][1].

[1]: https://en.wikipedia.org/wiki/Mole_(unit)

@docs SubstanceAmount, Moles


## Conversions

@docs moles, inMoles, picomoles, inPicomoles, nanomoles, inNanomoles
@docs micromoles, inMicromoles, millimoles, inMillimoles
@docs centimoles, inCentimoles, decimoles, inDecimoles
@docs kilomoles, inKilomoles, megamoles, inMegamoles, gigamoles, inGigamoles

-}

import Quantity
import SubstanceAmount


{-| -}
type alias SubstanceAmount =
  SubstanceAmount.SubstanceAmount


{-| -}
type alias Moles =
  SubstanceAmount.Moles


{-| Construct a substance amount from a number of moles.
-}
moles : Float -> SubstanceAmount.SubstanceAmount
moles =
  SubstanceAmount.moles


{-| Convert a substance amount to a number of moles.
-}
inMoles : SubstanceAmount.SubstanceAmount -> Float
inMoles =
  SubstanceAmount.inMoles


{-| Construct a substance amount from a number of picomoles.
-}
picomoles : Float -> SubstanceAmount.SubstanceAmount
picomoles =
  SubstanceAmount.picomoles


{-| Convert a substance amount to a number of picomoles.
-}
inPicomoles : SubstanceAmount.SubstanceAmount -> Float
inPicomoles =
  SubstanceAmount.inPicomoles


{-| Construct a substance amount from a number of nanomoles.
-}
nanomoles : Float -> SubstanceAmount.SubstanceAmount
nanomoles =
  SubstanceAmount.nanomoles


{-| Convert a substance amount to a number of nanomoles.
-}
inNanomoles : SubstanceAmount.SubstanceAmount -> Float
inNanomoles =
  SubstanceAmount.inNanomoles


{-| Construct a substance amount from a number of micromoles.
-}
micromoles : Float -> SubstanceAmount.SubstanceAmount
micromoles =
  SubstanceAmount.micromoles


{-| Convert a substance amount to a number of micromoles.
-}
inMicromoles : SubstanceAmount.SubstanceAmount -> Float
inMicromoles =
  SubstanceAmount.inMicromoles


{-| Construct a substance amount from a number of millimoles.
-}
millimoles : Float -> SubstanceAmount.SubstanceAmount
millimoles =
  SubstanceAmount.millimoles


{-| Convert a substance amount to a number of millimoles.
-}
inMillimoles : SubstanceAmount.SubstanceAmount -> Float
inMillimoles =
  SubstanceAmount.inMillimoles


{-| Construct a substance amount from a number of centimoles.
-}
centimoles : Float -> SubstanceAmount.SubstanceAmount
centimoles =
  SubstanceAmount.centimoles


{-| Convert a substance amount to a number of centimoles.
-}
inCentimoles : SubstanceAmount.SubstanceAmount -> Float
inCentimoles =
  SubstanceAmount.inCentimoles


{-| Construct a substance amount from a number of decimoles.
-}
decimoles : Float -> SubstanceAmount.SubstanceAmount
decimoles =
  SubstanceAmount.decimoles


{-| Convert a substance amount to a number of decimoles.
-}
inDecimoles : SubstanceAmount.SubstanceAmount -> Float
inDecimoles =
  SubstanceAmount.inDecimoles


{-| Construct a substance amount from a number of kilomoles.
-}
kilomoles : Float -> SubstanceAmount.SubstanceAmount
kilomoles =
  SubstanceAmount.kilomoles


{-| Convert a substance amount to a number of kilomoles.
-}
inKilomoles : SubstanceAmount.SubstanceAmount -> Float
inKilomoles =
  SubstanceAmount.inKilomoles


{-| Construct a substance amount from a number of megamoles.
-}
megamoles : Float -> SubstanceAmount.SubstanceAmount
megamoles =
  SubstanceAmount.megamoles


{-| Convert a substance amount to a number of megamoles.
-}
inMegamoles : SubstanceAmount.SubstanceAmount -> Float
inMegamoles =
  SubstanceAmount.inMegamoles


{-| Construct a substance amount from a number of gigamoles.
-}
gigamoles : Float -> SubstanceAmount.SubstanceAmount
gigamoles =
  SubstanceAmount.gigamoles


{-| Convert a substance amount to a number of gigamoles.
-}
inGigamoles : SubstanceAmount.SubstanceAmount -> Float
inGigamoles =
  SubstanceAmount.inGigamoles