module Units.Illuminance exposing (Illuminance, Lux, lux, inLux, footCandles, inFootCandles)

{-| [Illuminance][wp-illuminance] is a measure of how much light is striking a
surface: [luminous flux](LuminousFlux) per unit area. It is measured in
[lux][wp-lux].

Illuminance is useful as a measure of how brightly a surface is lit. For
example, on an overcast day, outside surfaces have an illuminance of
approximately 1000 lux; inside an office might be more like 400 lux and under a
full moon might be only 0.2 lux.

[wp-illuminance]: https://en.wikipedia.org/wiki/Illuminance
[wp-lux]: https://en.wikipedia.org/wiki/Lux>

@docs Illuminance, Lux


## Conversions

@docs lux, inLux, footCandles, inFootCandles

-}

import Area
import Illuminance
import LuminousFlux
import Quantity


{-| -}
type alias Illuminance =
  Illuminance.Illuminance


{-| -}
type alias Lux =
  Illuminance.Lux


{-| Construct an illuminance value from a number of lux. One lux is equal to one
lumen per square meter. See [here][wp-lux-illuminance] for a table of
illuminance values in lux for common environments.

[wp-lux-illuminance]: https://en.wikipedia.org/wiki/Lux#Illuminance

-}
lux : Float -> Illuminance.Illuminance
lux =
  Illuminance.lux


{-| Convert an illuminance value to a number of lux.
-}
inLux : Illuminance.Illuminance -> Float
inLux =
  Illuminance.inLux


{-| Construct an illuminance value from a number of
[foot-candles][wp-foot-candles]. One foot-candle is equal to one lumen per
square foot.

[wp-foot-candles]: https://en.wikipedia.org/wiki/Foot-candle

-}
footCandles : Float -> Illuminance.Illuminance
footCandles =
  Illuminance.footCandles


{-| Convert an illuminance value to a number of foot-candles.
-}
inFootCandles : Illuminance.Illuminance -> Float
inFootCandles =
  Illuminance.inFootCandles