module Units.Energy exposing (Energy, Joules, joules, inJoules, kilojoules, inKilojoules, megajoules, inMegajoules, kilowattHours, inKilowattHours)

{-| An `Energy` value represents an amount of energy (or work) in joules,
kilowatt hours etc. It is stored as a number of joules.

Note that since `Joules` is defined as `Product Newtons Meters`, you can compute
energy directly as a product of force and distance:

    Force.newtons 5 |> Quantity.times (Length.meters 4)
    --> Energy.joules 20

@docs Energy, Joules


## Conversions

@docs joules, inJoules, kilojoules, inKilojoules, megajoules, inMegajoules, kilowattHours, inKilowattHours

-}

import Energy
import Force
import Length
import Quantity


{-| -}
type alias Energy =
  Energy.Energy


{-| -}
type alias Joules =
  Energy.Joules


{-| Construct an energy value from a number of joules.
-}
joules : Float -> Energy.Energy
joules =
  Energy.joules


{-| Convert an energy value to a number of joules.
-}
inJoules : Energy.Energy -> Float
inJoules =
  Energy.inJoules


{-| Construct an energy value from a number of kilojoules.
-}
kilojoules : Float -> Energy.Energy
kilojoules =
  Energy.kilojoules


{-| Convert an energy value to a number of kilojoules.
-}
inKilojoules : Energy.Energy -> Float
inKilojoules =
  Energy.inKilojoules


{-| Construct an energy value from a number of megajoules.
-}
megajoules : Float -> Energy.Energy
megajoules =
  Energy.megajoules


{-| Convert an energy value to a number of megajoules.
-}
inMegajoules : Energy.Energy -> Float
inMegajoules =
  Energy.inMegajoules


{-| Construct an energy value from a number of kilowatt hours.

    Energy.kilowattHours 1
    --> Energy.megajoules 3.6

-}
kilowattHours : Float -> Energy.Energy
kilowattHours =
  Energy.kilowattHours


{-| Convert an energy value to a number of kilowatt hours.
-}
inKilowattHours : Energy.Energy -> Float
inKilowattHours =
  Energy.inKilowattHours