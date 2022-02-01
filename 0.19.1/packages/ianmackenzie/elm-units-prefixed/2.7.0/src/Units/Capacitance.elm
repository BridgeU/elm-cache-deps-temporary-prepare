module Units.Capacitance exposing (Capacitance, Farads, farads, inFarads, picofarads, inPicofarads, nanofarads, inNanofarads, microfarads, inMicrofarads)

{-| A `Capacitance` value represents an electrical capacitance in farads.

Note that since `Capacitance` is defined as `Rate Coulombs Volts` (charge per
voltage), you can construct a `Capacitance` value using `Quantity.per`:

    capacitance =
        charge |> Quantity.per voltage

You can also compute `Charge` and `Voltage` using `Capacitance`:

    charge =
        voltage |> Quantity.at capacitance

    voltage =
        charge |> Quantity.at_ capacitance

@docs Capacitance, Farads


## Conversions

@docs farads, inFarads
@docs picofarads, inPicofarads, nanofarads, inNanofarads, microfarads, inMicrofarads

-}

import Capacitance
import Quantity


{-| -}
type alias Capacitance =
  Capacitance.Capacitance


{-| -}
type alias Farads =
  Capacitance.Farads


{-| Construct capacitance from a number of farads.
-}
farads : Float -> Capacitance.Capacitance
farads =
  Capacitance.farads


{-| Convert capacitance to a number of farads.
-}
inFarads : Capacitance.Capacitance -> Float
inFarads =
  Capacitance.inFarads


{-| Construct capacitance from a number of picofarads.
-}
picofarads : Float -> Capacitance.Capacitance
picofarads =
  Capacitance.picofarads


{-| Convert a capacitance to a number of picofarads.
-}
inPicofarads : Capacitance.Capacitance -> Float
inPicofarads =
  Capacitance.inPicofarads


{-| Construct a capacitance from a number of nanofarads
-}
nanofarads : Float -> Capacitance.Capacitance
nanofarads =
  Capacitance.nanofarads


{-| Convert a capacitance to a number of nanofarads
-}
inNanofarads : Capacitance.Capacitance -> Float
inNanofarads =
  Capacitance.inNanofarads


{-| Construct a capacitance from a number of microfarads.
-}
microfarads : Float -> Capacitance.Capacitance
microfarads =
  Capacitance.microfarads


{-| Convert a capacitance to a number of microfarads
-}
inMicrofarads : Capacitance.Capacitance -> Float
inMicrofarads =
  Capacitance.inMicrofarads