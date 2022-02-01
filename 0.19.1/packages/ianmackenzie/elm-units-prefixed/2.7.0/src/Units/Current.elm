module Units.Current exposing (Current, Amperes, amperes, inAmperes, milliamperes, inMilliamperes)

{-| A `Current` value represents an electrical current in amperes.

Note that since `Amperes` is defined as `Rate Coulombs Seconds` (charge
per unit time), you can construct a `Current` value using `Quantity.per`:

    current =
        charge |> Quantity.per duration

You can also do rate-related calculations with `Current` values to compute
`Charge` or `Duration`:

    charge =
        current |> Quantity.for duration

    alsoCharge =
        duration |> Quantity.at current

    duration =
        charge |> Quantity.at_ current

@docs Current, Amperes


## Conversions

@docs amperes, inAmperes, milliamperes, inMilliamperes

-}

import Charge
import Current
import Duration
import Quantity


{-| -}
type alias Current =
  Current.Current


{-| -}
type alias Amperes =
  Current.Amperes


{-| Construct a current from a number of amperes.
-}
amperes : Float -> Current.Current
amperes =
  Current.amperes


{-| Convert a current to a number of amperes.

    Charge.coulombs 10
        |> Quantity.per (Duration.seconds 2)
        |> Current.inAmperes
    --> 5

-}
inAmperes : Current.Current -> Float
inAmperes =
  Current.inAmperes


{-| Construct a current from a number of milliamperes.

    Current.milliamperes 500
    --> Current.amperes 0.5

-}
milliamperes : Float -> Current.Current
milliamperes =
  Current.milliamperes


{-| Convert a current to number of milliamperes.

    Current.amperes 2 |> Current.inMilliamperes
    --> 2000

-}
inMilliamperes : Current.Current -> Float
inMilliamperes =
  Current.inMilliamperes