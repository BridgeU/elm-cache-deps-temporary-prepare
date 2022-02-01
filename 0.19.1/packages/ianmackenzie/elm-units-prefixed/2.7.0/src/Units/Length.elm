module Units.Length exposing (Length, Meters, meters, inMeters, angstroms, inAngstroms, nanometers, inNanometers, microns, inMicrons, millimeters, inMillimeters, centimeters, inCentimeters, kilometers, inKilometers, thou, inThou, inches, inInches, feet, inFeet, yards, inYards, miles, inMiles, cssPixels, inCssPixels, points, inPoints, picas, inPicas, astronomicalUnits, inAstronomicalUnits, parsecs, inParsecs, lightYears, inLightYears, meter, angstrom, nanometer, micron, millimeter, centimeter, kilometer, inch, foot, yard, mile, astronomicalUnit, parsec, lightYear)

{-| A `Length` represents a length in meters, feet, centimeters, miles etc. It
is stored as a number of meters.

@docs Length, Meters


## Metric

@docs meters, inMeters
@docs angstroms, inAngstroms, nanometers, inNanometers, microns, inMicrons, millimeters, inMillimeters, centimeters, inCentimeters, kilometers, inKilometers


## Imperial

@docs thou, inThou, inches, inInches, feet, inFeet, yards, inYards, miles, inMiles


## CSS and typography

@docs cssPixels, inCssPixels, points, inPoints, picas, inPicas


## Astronomical

@docs astronomicalUnits, inAstronomicalUnits, parsecs, inParsecs, lightYears, inLightYears


## Constants

Shorthand for `Length.meters 1`, `Length.feet 1` etc. Can be convenient to use
with [`Quantity.per`](Quantity#per).

Note that `thou` is omitted since it doesn't have separate singular and plural
forms.

@docs meter, angstrom, nanometer, micron, millimeter, centimeter, kilometer
@docs inch, foot, yard, mile
@docs astronomicalUnit, parsec, lightYear

-}

import Length
import Quantity


{-| -}
type alias Length =
  Length.Length


{-| -}
type alias Meters =
  Length.Meters


{-| Construct a length from a number of meters.

    height : Length
    height =
        Length.meters 2

-}
meters : Float -> Length.Length
meters =
  Length.meters


{-| Convert a length to a number of meters.

    Length.feet 1 |> Length.inMeters
    --> 0.3048

-}
inMeters : Length.Length -> Float
inMeters =
  Length.inMeters


{-| Construct a length from a number of angstroms.

    Length.angstroms 1
    --> Length.meters 1e-10

-}
angstroms : Float -> Length.Length
angstroms =
  Length.angstroms


{-| Convert a length to a number of angstroms.

    Length.nanometers 1 |> Length.inAngstroms
    --> 10

-}
inAngstroms : Length.Length -> Float
inAngstroms =
  Length.inAngstroms


{-| Construct a length from a number of nanometers.

    Length.nanometers 1
    --> Length.meters 1e-9

-}
nanometers : Float -> Length.Length
nanometers =
  Length.nanometers


{-| Convert a length to a number of nanometers.

    Length.microns 1 |> Length.inNanometers
    --> 1000

-}
inNanometers : Length.Length -> Float
inNanometers =
  Length.inNanometers


{-| Construct a length from a number of microns (micrometers).

    Length.microns 1
    --> Length.meters 1e-6

-}
microns : Float -> Length.Length
microns =
  Length.microns


{-| Convert a length to a number of microns (micrometers).

    Length.millimeters 1 |> Length.inMicrons
    --> 1000

-}
inMicrons : Length.Length -> Float
inMicrons =
  Length.inMicrons


{-| Construct a length from number of millimeters.
-}
millimeters : Float -> Length.Length
millimeters =
  Length.millimeters


{-| Convert a length to number of millimeters.
-}
inMillimeters : Length.Length -> Float
inMillimeters =
  Length.inMillimeters


{-| Construct a length from a number of centimeters.
-}
centimeters : Float -> Length.Length
centimeters =
  Length.centimeters


{-| Convert a length to a number of centimeters.
-}
inCentimeters : Length.Length -> Float
inCentimeters =
  Length.inCentimeters


{-| Construct a length from a number of kilometers.
-}
kilometers : Float -> Length.Length
kilometers =
  Length.kilometers


{-| Convert a length to a number of kilometers.
-}
inKilometers : Length.Length -> Float
inKilometers =
  Length.inKilometers


{-| Construct a length from a number of thou (thousandths of an inch).

    Length.thou 5
    --> Length.inches 0.005

-}
thou : Float -> Length.Length
thou =
  Length.thou


{-| Convert a length to a number of thou (thousandths of an inch).

    Length.millimeters 1 |> Length.inThou
    --> 39.37007874015748

-}
inThou : Length.Length -> Float
inThou =
  Length.inThou


{-| Construct a length from a number of inches.
-}
inches : Float -> Length.Length
inches =
  Length.inches


{-| Convert a length to a number of inches.
-}
inInches : Length.Length -> Float
inInches =
  Length.inInches


{-| Construct a length from a number of feet.
-}
feet : Float -> Length.Length
feet =
  Length.feet


{-| Convert a length to a number of feet.
-}
inFeet : Length.Length -> Float
inFeet =
  Length.inFeet


{-| Construct a length from a number of yards.
-}
yards : Float -> Length.Length
yards =
  Length.yards


{-| Convert a length to a number of yards.
-}
inYards : Length.Length -> Float
inYards =
  Length.inYards


{-| Construct a length from a number of miles.
-}
miles : Float -> Length.Length
miles =
  Length.miles


{-| Convert a length to a number of miles.
-}
inMiles : Length.Length -> Float
inMiles =
  Length.inMiles


{-| Construct a length from a number of [CSS pixels](https://drafts.csswg.org/css-values-3/#absolute-lengths),
defined as 1/96 of an inch.

Note the difference between this function and [`Pixels.pixels`](Pixels#pixels).
`Length.cssPixels 1` is equivalent to `Length.inches (1 / 96)` or
approximately `Length.millimeters 0.264583`; it returns a length in _real world_
units equal to the (nominal) physical size of one CSS pixel.

In contrast, `Pixels.pixels 1` simply returns an abstract "1 pixel" value. You
can think of `Length.cssPixels 1` as a shorthand for

    Pixels.pixels 1
        |> Quantity.at_
            (Pixels.pixels 96
                |> Quantity.per (Length.inches 1)
            )

That is, `Length.cssPixels 1` is the size of 1 pixel at a resolution of 96 DPI.

-}
cssPixels : Float -> Length.Length
cssPixels =
  Length.cssPixels


{-| Convert a length to a number of CSS pixels.
-}
inCssPixels : Length.Length -> Float
inCssPixels =
  Length.inCssPixels


{-| Construct a length from a number of [points](https://en.wikipedia.org/wiki/Point_%28typography%29),
defined as 1/72 of an inch.
-}
points : Float -> Length.Length
points =
  Length.points


{-| Convert a length to a number of points.
-}
inPoints : Length.Length -> Float
inPoints =
  Length.inPoints


{-| Construct a length from a number of [picas](https://en.wikipedia.org/wiki/Pica_%28typography%29),
defined as 1/6 of an inch.
-}
picas : Float -> Length.Length
picas =
  Length.picas


{-| Convert a length to a number of picas.
-}
inPicas : Length.Length -> Float
inPicas =
  Length.inPicas


{-| Construct a length from a number of [astronomical units][au] (AU). One AU is
approximately equal to the average distance of the Earth from the Sun.

[au]: https://en.wikipedia.org/wiki/Astronomical_unit "Astronomical unit"

-}
astronomicalUnits : Float -> Length.Length
astronomicalUnits =
  Length.astronomicalUnits


{-| Convert a length to a number of astronomical units.
-}
inAstronomicalUnits : Length.Length -> Float
inAstronomicalUnits =
  Length.inAstronomicalUnits


{-| Construct a length from a number of [parsecs][parsec].

[parsec]: https://en.wikipedia.org/wiki/Parsec "Parsec"

-}
parsecs : Float -> Length.Length
parsecs =
  Length.parsecs


{-| Convert a length to a number of parsecs.
-}
inParsecs : Length.Length -> Float
inParsecs =
  Length.inParsecs


{-| Construct a length from a number of light years. One light year is the
distance traveled when moving at the speed of light for one [Julian year](Duration#julianYear).
-}
lightYears : Float -> Length.Length
lightYears =
  Length.lightYears


{-| Convert a length to a number of light years.
-}
inLightYears : Length.Length -> Float
inLightYears =
  Length.inLightYears


{-| -}
meter : Length.Length
meter =
  Length.meter


{-| -}
angstrom : Length.Length
angstrom =
  Length.angstrom


{-| -}
nanometer : Length.Length
nanometer =
  Length.nanometer


{-| -}
micron : Length.Length
micron =
  Length.micron


{-| -}
millimeter : Length.Length
millimeter =
  Length.millimeter


{-| -}
centimeter : Length.Length
centimeter =
  Length.centimeter


{-| -}
kilometer : Length.Length
kilometer =
  Length.kilometer


{-| -}
inch : Length.Length
inch =
  Length.inch


{-| -}
foot : Length.Length
foot =
  Length.foot


{-| -}
yard : Length.Length
yard =
  Length.yard


{-| -}
mile : Length.Length
mile =
  Length.mile


{-| -}
astronomicalUnit : Length.Length
astronomicalUnit =
  Length.astronomicalUnit


{-| -}
parsec : Length.Length
parsec =
  Length.parsec


{-| -}
lightYear : Length.Length
lightYear =
  Length.lightYear