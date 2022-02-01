module Units.Mass exposing (Mass, Kilograms, kilograms, inKilograms, grams, inGrams, metricTons, inMetricTons, pounds, inPounds, ounces, inOunces, longTons, inLongTons, shortTons, inShortTons, kilogram, gram, metricTon, pound, ounce, longTon, shortTon)

{-| A `Mass` represents a mass in kilograms, pounds, metric or imperial tons
etc. It is stored as a number of kilograms.

@docs Mass, Kilograms


## Metric

@docs kilograms, inKilograms, grams, inGrams, metricTons, inMetricTons


## Imperial

@docs pounds, inPounds, ounces, inOunces, longTons, inLongTons


## U.S. customary

@docs shortTons, inShortTons


## Constants

Shorthand for `Mass.kilograms 1`, `Mass.shortTons 1` etc. Can be convenient to
use with [`Quantity.per`](Quantity#per).

@docs kilogram, gram, metricTon, pound, ounce, longTon, shortTon

-}

import Mass
import Quantity


{-| -}
type alias Mass =
  Mass.Mass


{-| -}
type alias Kilograms =
  Mass.Kilograms


{-| Construct a mass from a number of kilograms.
-}
kilograms : Float -> Mass.Mass
kilograms =
  Mass.kilograms


{-| Convert a mass to a number of kilograms.
-}
inKilograms : Mass.Mass -> Float
inKilograms =
  Mass.inKilograms


{-| Construct a mass from a number of grams.
-}
grams : Float -> Mass.Mass
grams =
  Mass.grams


{-| Convert a mass to a number of grams.
-}
inGrams : Mass.Mass -> Float
inGrams =
  Mass.inGrams


{-| Construct a mass from a number of [metric tons][1].

    Mass.metricTons 1
    --> Mass.kilograms 1000

[1]: https://en.wikipedia.org/wiki/Tonne

-}
metricTons : Float -> Mass.Mass
metricTons =
  Mass.metricTons


{-| Convert a mass to a number of metric tons.
-}
inMetricTons : Mass.Mass -> Float
inMetricTons =
  Mass.inMetricTons


{-| Construct a mass from a number of pounds.
-}
pounds : Float -> Mass.Mass
pounds =
  Mass.pounds


{-| Convert a mass to a number of pounds.
-}
inPounds : Mass.Mass -> Float
inPounds =
  Mass.inPounds


{-| Construct a mass from a number of ounces.
-}
ounces : Float -> Mass.Mass
ounces =
  Mass.ounces


{-| Convert a mass to a number of ounces.

    Mass.pounds 1 |> Mass.inOunces
    --> 16

-}
inOunces : Mass.Mass -> Float
inOunces =
  Mass.inOunces


{-| Construct a mass from a number of [long tons][1]. This is the 'ton' commonly
used in the United Kingdom and British Commonwealth.

    Mass.longTons 1
    --> Mass.pounds 2240

[1]: https://en.wikipedia.org/wiki/Long_ton

-}
longTons : Float -> Mass.Mass
longTons =
  Mass.longTons


{-| Convert a mass to a number of long tons.
-}
inLongTons : Mass.Mass -> Float
inLongTons =
  Mass.inLongTons


{-| Construct a mass from a number of [short tons][1]. This is the 'ton'
commonly used in the United States.

    Mass.shortTons 1
    --> Mass.pounds 2000

[1]: https://en.wikipedia.org/wiki/Short_ton

-}
shortTons : Float -> Mass.Mass
shortTons =
  Mass.shortTons


{-| Convert a mass to a number of short tons.
-}
inShortTons : Mass.Mass -> Float
inShortTons =
  Mass.inShortTons


{-| -}
kilogram : Mass.Mass
kilogram =
  Mass.kilogram


{-| -}
gram : Mass.Mass
gram =
  Mass.gram


{-| -}
metricTon : Mass.Mass
metricTon =
  Mass.metricTon


{-| -}
pound : Mass.Mass
pound =
  Mass.pound


{-| -}
ounce : Mass.Mass
ounce =
  Mass.ounce


{-| -}
longTon : Mass.Mass
longTon =
  Mass.longTon


{-| -}
shortTon : Mass.Mass
shortTon =
  Mass.shortTon