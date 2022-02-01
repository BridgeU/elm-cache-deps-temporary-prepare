module Units.Volume exposing (Volume, CubicMeters, cubicMeters, inCubicMeters, milliliters, inMilliliters, liters, inLiters, cubicInches, inCubicInches, cubicFeet, inCubicFeet, cubicYards, inCubicYards, usLiquidGallons, inUsLiquidGallons, usDryGallons, inUsDryGallons, imperialGallons, inImperialGallons, usLiquidQuarts, inUsLiquidQuarts, usDryQuarts, inUsDryQuarts, imperialQuarts, inImperialQuarts, usLiquidPints, inUsLiquidPints, usDryPints, inUsDryPints, imperialPints, inImperialPints, usFluidOunces, inUsFluidOunces, imperialFluidOunces, inImperialFluidOunces, cubicMeter, milliliter, liter, cubicInch, cubicFoot, cubicYard, usLiquidGallon, usDryGallon, imperialGallon, usLiquidQuart, usDryQuart, imperialQuart, usLiquidPint, usDryPint, imperialPint, usFluidOunce, imperialFluidOunce)

{-| A `Volume` represents a volume in cubic meters, cubic feet, liters, US
liquid gallons, imperial fluid ounces etc. It is stored as a number of cubic
meters.

@docs Volume, CubicMeters


## Metric

@docs cubicMeters, inCubicMeters
@docs milliliters, inMilliliters, liters, inLiters


## Imperial

@docs cubicInches, inCubicInches, cubicFeet, inCubicFeet, cubicYards, inCubicYards
@docs usLiquidGallons, inUsLiquidGallons, usDryGallons, inUsDryGallons, imperialGallons, inImperialGallons
@docs usLiquidQuarts, inUsLiquidQuarts, usDryQuarts, inUsDryQuarts, imperialQuarts, inImperialQuarts
@docs usLiquidPints, inUsLiquidPints, usDryPints, inUsDryPints, imperialPints, inImperialPints
@docs usFluidOunces, inUsFluidOunces, imperialFluidOunces, inImperialFluidOunces


## Constants

Shorthand for `Volume.cubicMeters 1`, `Volume.imperialGallons 1` etc. Can be
convenient to use with [`Quantity.per`](Quantity#per).

@docs cubicMeter, milliliter, liter
@docs cubicInch, cubicFoot, cubicYard
@docs usLiquidGallon, usDryGallon, imperialGallon
@docs usLiquidQuart, usDryQuart, imperialQuart
@docs usLiquidPint, usDryPint, imperialPint
@docs usFluidOunce, imperialFluidOunce

-}

import Length
import Quantity
import Volume


{-| -}
type alias Volume =
  Volume.Volume


{-| -}
type alias CubicMeters =
  Volume.CubicMeters


{-| Construct a volume from a number of cubic meters.
-}
cubicMeters : Float -> Volume.Volume
cubicMeters =
  Volume.cubicMeters


{-| Convert a volume to a number of cubic meters.
-}
inCubicMeters : Volume.Volume -> Float
inCubicMeters =
  Volume.inCubicMeters


{-| Construct a volume from a number of milliliters.
-}
milliliters : Float -> Volume.Volume
milliliters =
  Volume.milliliters


{-| Convert a volume to a number of milliliters.
-}
inMilliliters : Volume.Volume -> Float
inMilliliters =
  Volume.inMilliliters


{-| Construct a volume from a number of liters.
-}
liters : Float -> Volume.Volume
liters =
  Volume.liters


{-| Convert a volume to a number of liters.
-}
inLiters : Volume.Volume -> Float
inLiters =
  Volume.inLiters


{-| Construct a volume from a number of cubic inches.
-}
cubicInches : Float -> Volume.Volume
cubicInches =
  Volume.cubicInches


{-| Convert a volume to a number of cubic inches.
-}
inCubicInches : Volume.Volume -> Float
inCubicInches =
  Volume.inCubicInches


{-| Construct a volume from a number of cubic feet.
-}
cubicFeet : Float -> Volume.Volume
cubicFeet =
  Volume.cubicFeet


{-| Convert a volume to a number of cubic feet.
-}
inCubicFeet : Volume.Volume -> Float
inCubicFeet =
  Volume.inCubicFeet


{-| Construct a volume from a number of cubic yards.
-}
cubicYards : Float -> Volume.Volume
cubicYards =
  Volume.cubicYards


{-| Convert a volume to a number of cubic yards.
-}
inCubicYards : Volume.Volume -> Float
inCubicYards =
  Volume.inCubicYards


{-| Construct a volume from a number of U.S. liquid gallon.
-}
usLiquidGallons : Float -> Volume.Volume
usLiquidGallons =
  Volume.usLiquidGallons


{-| Convert a volume to a number of U.S. liquid gallons.
-}
inUsLiquidGallons : Volume.Volume -> Float
inUsLiquidGallons =
  Volume.inUsLiquidGallons


{-| Construct a volume from a number of U.S. dry gallons.
-}
usDryGallons : Float -> Volume.Volume
usDryGallons =
  Volume.usDryGallons


{-| Convert a volume to a number of U.S. dry gallons.
-}
inUsDryGallons : Volume.Volume -> Float
inUsDryGallons =
  Volume.inUsDryGallons


{-| Construct a volume from a number of imperial gallons.
-}
imperialGallons : Float -> Volume.Volume
imperialGallons =
  Volume.imperialGallons


{-| Convert a volume to a number of imperial gallons.
-}
inImperialGallons : Volume.Volume -> Float
inImperialGallons =
  Volume.inImperialGallons


{-| Construct a volume from a number of U.S. liquid quarts.
-}
usLiquidQuarts : Float -> Volume.Volume
usLiquidQuarts =
  Volume.usLiquidQuarts


{-| Convert a volume to a number of U.S. liquid quarts.
-}
inUsLiquidQuarts : Volume.Volume -> Float
inUsLiquidQuarts =
  Volume.inUsLiquidQuarts


{-| Construct a volume from a number of U.S. dry quarts.
-}
usDryQuarts : Float -> Volume.Volume
usDryQuarts =
  Volume.usDryQuarts


{-| Convert a volume to a number of U.S. dry quarts.
-}
inUsDryQuarts : Volume.Volume -> Float
inUsDryQuarts =
  Volume.inUsDryQuarts


{-| Construct a volume from a number of imperial quarts.
-}
imperialQuarts : Float -> Volume.Volume
imperialQuarts =
  Volume.imperialQuarts


{-| Convert a volume to a number of imperial quarts.
-}
inImperialQuarts : Volume.Volume -> Float
inImperialQuarts =
  Volume.inImperialQuarts


{-| Construct a volume from a number of U.S. liquid pints.
-}
usLiquidPints : Float -> Volume.Volume
usLiquidPints =
  Volume.usLiquidPints


{-| Convert a volume to a number of U.S. liquid pints.
-}
inUsLiquidPints : Volume.Volume -> Float
inUsLiquidPints =
  Volume.inUsLiquidPints


{-| Construct a volume from a number of U.S. dry pints.
-}
usDryPints : Float -> Volume.Volume
usDryPints =
  Volume.usDryPints


{-| Convert a volume to a number of U.S. dry pints.
-}
inUsDryPints : Volume.Volume -> Float
inUsDryPints =
  Volume.inUsDryPints


{-| Construct a volume from a number of imperial pints.
-}
imperialPints : Float -> Volume.Volume
imperialPints =
  Volume.imperialPints


{-| Convert a volume to a number of imperial pints.
-}
inImperialPints : Volume.Volume -> Float
inImperialPints =
  Volume.inImperialPints


{-| Construct a volume from a number of U.S. fluid ounces.
-}
usFluidOunces : Float -> Volume.Volume
usFluidOunces =
  Volume.usFluidOunces


{-| Convert a volume to a number of U.S. fluid ounces.
-}
inUsFluidOunces : Volume.Volume -> Float
inUsFluidOunces =
  Volume.inUsFluidOunces


{-| Construct a volume from a number of imperial fluid ounces.
-}
imperialFluidOunces : Float -> Volume.Volume
imperialFluidOunces =
  Volume.imperialFluidOunces


{-| Convert a volume to a number of imperial fluid ounces.
-}
inImperialFluidOunces : Volume.Volume -> Float
inImperialFluidOunces =
  Volume.inImperialFluidOunces


{-| -}
cubicMeter : Volume.Volume
cubicMeter =
  Volume.cubicMeter


{-| -}
milliliter : Volume.Volume
milliliter =
  Volume.milliliter


{-| -}
liter : Volume.Volume
liter =
  Volume.liter


{-| -}
cubicInch : Volume.Volume
cubicInch =
  Volume.cubicInch


{-| -}
cubicFoot : Volume.Volume
cubicFoot =
  Volume.cubicFoot


{-| -}
cubicYard : Volume.Volume
cubicYard =
  Volume.cubicYard


{-| -}
usLiquidGallon : Volume.Volume
usLiquidGallon =
  Volume.usLiquidGallon


{-| -}
usDryGallon : Volume.Volume
usDryGallon =
  Volume.usDryGallon


{-| -}
imperialGallon : Volume.Volume
imperialGallon =
  Volume.imperialGallon


{-| -}
usLiquidQuart : Volume.Volume
usLiquidQuart =
  Volume.usLiquidQuart


{-| -}
usDryQuart : Volume.Volume
usDryQuart =
  Volume.usDryQuart


{-| -}
imperialQuart : Volume.Volume
imperialQuart =
  Volume.imperialQuart


{-| -}
usLiquidPint : Volume.Volume
usLiquidPint =
  Volume.usLiquidPint


{-| -}
usDryPint : Volume.Volume
usDryPint =
  Volume.usDryPint


{-| -}
imperialPint : Volume.Volume
imperialPint =
  Volume.imperialPint


{-| -}
usFluidOunce : Volume.Volume
usFluidOunce =
  Volume.usFluidOunce


{-| -}
imperialFluidOunce : Volume.Volume
imperialFluidOunce =
  Volume.imperialFluidOunce