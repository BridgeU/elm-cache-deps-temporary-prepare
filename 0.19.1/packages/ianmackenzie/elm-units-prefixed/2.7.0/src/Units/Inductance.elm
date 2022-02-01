module Units.Inductance exposing (Inductance, Henries, henries, inHenries, nanohenries, inNanohenries, microhenries, inMicrohenries, millihenries, inMillihenries, kilohenries, inKilohenries)

{-| A `Inductance` value represents an electrical inductance in henries.

@docs Inductance, Henries


## Conversions

@docs henries, inHenries
@docs nanohenries, inNanohenries, microhenries, inMicrohenries, millihenries, inMillihenries, kilohenries, inKilohenries

-}

import Current
import Duration
import Inductance
import Quantity
import Voltage


{-| -}
type alias Inductance =
  Inductance.Inductance


{-| -}
type alias Henries =
  Inductance.Henries


{-| Construct an inductance from a number of henries.
-}
henries : Float -> Inductance.Inductance
henries =
  Inductance.henries


{-| Convert an inductance to a number of henries.
-}
inHenries : Inductance.Inductance -> Float
inHenries =
  Inductance.inHenries


{-| Construct an inductance from a number of nanohenries.
-}
nanohenries : Float -> Inductance.Inductance
nanohenries =
  Inductance.nanohenries


{-| Convert an inductance to a number of nanohenries.
-}
inNanohenries : Inductance.Inductance -> Float
inNanohenries =
  Inductance.inNanohenries


{-| Construct an inductance from a number of microhenries.
-}
microhenries : Float -> Inductance.Inductance
microhenries =
  Inductance.microhenries


{-| Convert an inductance to a number of microhenries.
-}
inMicrohenries : Inductance.Inductance -> Float
inMicrohenries =
  Inductance.inMicrohenries


{-| Construct an inductance from a number of millihenries.
-}
millihenries : Float -> Inductance.Inductance
millihenries =
  Inductance.millihenries


{-| Convert an inductance to a number of millihenries.
-}
inMillihenries : Inductance.Inductance -> Float
inMillihenries =
  Inductance.inMillihenries


{-| Construct an inductance from a number of kilohenries.
-}
kilohenries : Float -> Inductance.Inductance
kilohenries =
  Inductance.kilohenries


{-| Convert an inductance to a number of kilohenries.
-}
inKilohenries : Inductance.Inductance -> Float
inKilohenries =
  Inductance.inKilohenries