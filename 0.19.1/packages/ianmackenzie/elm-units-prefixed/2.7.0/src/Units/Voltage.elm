module Units.Voltage exposing (Voltage, Volts, volts, inVolts)

{-| A `Voltage` value represents a voltage (electric potential difference, if
we're being picky) in volts.

Note that since `Volts` is defined as `Rate Watts Amperes` (power per unit
current), you can do rate-related calculations with `Voltage` values to compute
`Power` or `Current`:

    -- elm-units version of 'P = V * I'
    power =
        current |> Quantity.at voltage

    -- I = P / V
    current =
        power |> Quantity.at_ voltage

Just for fun, note that since you can also [express `Voltage` in terms of
`Current` and `Resistance`](Resistance), you could rewrite the second example
above as

    -- P = I^2 * R
    power =
        current
            |> Quantity.at
                (current
                    |> Quantity.at resistance
                )

@docs Voltage, Volts

@docs volts, inVolts

-}

import Current
import Power
import Quantity
import Voltage


{-| -}
type alias Voltage =
  Voltage.Voltage


{-| -}
type alias Volts =
  Voltage.Volts


{-| Construct a voltage from a number of volts.
-}
volts : Float -> Voltage.Voltage
volts =
  Voltage.volts


{-| Convert a voltage to a number of volts.
-}
inVolts : Voltage.Voltage -> Float
inVolts =
  Voltage.inVolts