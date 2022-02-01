module Units.Resistance exposing (Resistance, Ohms, ohms, inOhms)

{-| A `Resistance` value represents an electrical resistance in ohms.

Note that since `Ohms` is defined as `Rate Volts Amperes` (voltage per unit
current), you can construct a `Resistance` value using `Quantity.per`:

    resistance =
        voltage |> Quantity.per current

You can also do rate-related calculations with `Resistance` values to compute
`Voltage` or `Current`:

    voltage =
        current |> Quantity.at resistance

    current =
        voltage |> Quantity.at_ resistance

@docs Resistance, Ohms

@docs ohms, inOhms

-}

import Current
import Quantity
import Resistance
import Voltage


{-| -}
type alias Resistance =
  Resistance.Resistance


{-| -}
type alias Ohms =
  Resistance.Ohms


{-| Construct a resistance from a number of ohms.
-}
ohms : Float -> Resistance.Resistance
ohms =
  Resistance.ohms


{-| Convert a resistance to a number of ohms.
-}
inOhms : Resistance.Resistance -> Float
inOhms =
  Resistance.inOhms