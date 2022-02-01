module Units.Density exposing (Density, KilogramsPerCubicMeter, kilogramsPerCubicMeter, inKilogramsPerCubicMeter, gramsPerCubicCentimeter, inGramsPerCubicCentimeter, poundsPerCubicInch, inPoundsPerCubicInch, poundsPerCubicFoot, inPoundsPerCubicFoot)

{-| A `Density` value represents a density in grams per cubic centimeter, pounds
per cubic inch, etc. It is stored as a number of kilograms per cubic meter.

Note that since `KilogramsPerCubicMeter` is defined as `Rate Kilograms
CubicMeters` (mass per unit volume), you can construct a `Density` value using
`Quantity.per`:

    density =
        mass |> Quantity.per volume

You can also do rate-related calculations with `Density` values to compute
`Mass` or `Volume`:

    mass =
        volume |> Quantity.at density

    volume =
        mass |> Quantity.at_ density

@docs Density, KilogramsPerCubicMeter


## Metric

@docs kilogramsPerCubicMeter, inKilogramsPerCubicMeter, gramsPerCubicCentimeter, inGramsPerCubicCentimeter


## Imperial

@docs poundsPerCubicInch, inPoundsPerCubicInch, poundsPerCubicFoot, inPoundsPerCubicFoot

-}

import Density
import Mass
import Quantity
import Volume


{-| -}
type alias Density =
  Density.Density


{-| -}
type alias KilogramsPerCubicMeter =
  Density.KilogramsPerCubicMeter


{-| Construct a density from a number of kilograms per cubic meter.
-}
kilogramsPerCubicMeter : Float -> Density.Density
kilogramsPerCubicMeter =
  Density.kilogramsPerCubicMeter


{-| Convert a density to a number of kilograms per cubic meter.
-}
inKilogramsPerCubicMeter : Density.Density -> Float
inKilogramsPerCubicMeter =
  Density.inKilogramsPerCubicMeter


{-| Construct a density from a number of grams per cubic centimeter.
-}
gramsPerCubicCentimeter : Float -> Density.Density
gramsPerCubicCentimeter =
  Density.gramsPerCubicCentimeter


{-| Convert a density to a number of grams per cubic centimeter.
-}
inGramsPerCubicCentimeter : Density.Density -> Float
inGramsPerCubicCentimeter =
  Density.inGramsPerCubicCentimeter


{-| Construct a density from a number of pounds per cubic inch.
-}
poundsPerCubicInch : Float -> Density.Density
poundsPerCubicInch =
  Density.poundsPerCubicInch


{-| Convert a density to a number of pounds per cubic inch.
-}
inPoundsPerCubicInch : Density.Density -> Float
inPoundsPerCubicInch =
  Density.inPoundsPerCubicInch


{-| Construct a density from a number of pounds per cubic foot.
-}
poundsPerCubicFoot : Float -> Density.Density
poundsPerCubicFoot =
  Density.poundsPerCubicFoot


{-| Convert a density to a number of pounds per cubic foot.
-}
inPoundsPerCubicFoot : Density.Density -> Float
inPoundsPerCubicFoot =
  Density.inPoundsPerCubicFoot