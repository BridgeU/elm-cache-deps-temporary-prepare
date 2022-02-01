module Units.Temperature exposing (Temperature, Delta, CelsiusDegrees, degreesCelsius, inDegreesCelsius, degreesFahrenheit, inDegreesFahrenheit, kelvins, inKelvins, absoluteZero, celsiusDegrees, inCelsiusDegrees, fahrenheitDegrees, inFahrenheitDegrees, celsiusDegree, fahrenheitDegree, lessThan, greaterThan, lessThanOrEqualTo, greaterThanOrEqualTo, compare, equalWithin, min, max, plus, minus, clamp, minimum, maximum, sort, sortBy)

{-| Unlike other modules in `elm-units`, this module contains two different
primary types:

  - `Temperature`, which is not actually a `Quantity` since temperatures don't
    really act like normal quantities. For example, it doesn't make sense to
    add two temperatures or find the ratio between them.
  - `Delta`, which represents the difference between two temperatures. A `Delta`
    _is_ a `Quantity` since it does make sense to add two deltas to get a net
    delta, find the ratio between two deltas (one rise in temperature might be
    twice as much as another rise in temperature), etc.

Since a `Temperature` value is not a `Quantity`, this module exposes specialized
functions for doing the operations on `Temperature` values that _do_ make sense,
such as comparing two temperatures or sorting a list of temperatures. It's also
possible to find the delta from one temperature to another using [`minus`](Temperature#minus),
and then add a `Delta` to a `Temperature` using [`plus`](Temperature#plus).

@docs Temperature, Delta, CelsiusDegrees


# Temperatures

@docs degreesCelsius, inDegreesCelsius, degreesFahrenheit, inDegreesFahrenheit, kelvins, inKelvins, absoluteZero


# Deltas

Following the suggestion mentioned [here](https://en.wikipedia.org/wiki/Celsius#Temperatures_and_intervals),
this module uses (for example) `celsiusDegrees` to indicate a temperature delta
(change in temperature), in contrast to `degreesCelsius` which indicates an
actual temperature.

@docs celsiusDegrees, inCelsiusDegrees, fahrenheitDegrees, inFahrenheitDegrees


## Constants

Shorthand for `Temperature.celsiusDegrees 1` and `Temperature.fahrenheitDegrees
1`. Can be convenient to use with [`Quantity.per`](Quantity#per).

@docs celsiusDegree, fahrenheitDegree


# Comparison

@docs lessThan, greaterThan, lessThanOrEqualTo, greaterThanOrEqualTo, compare, equalWithin, min, max


# Arithmetic

@docs plus, minus, clamp


# List functions

@docs minimum, maximum, sort, sortBy

-}

import Quantity
import Temperature


{-| A temperature such as 25 degrees Celsius or 80 degrees Fahrenheit.
-}
type alias Temperature =
  Temperature.Temperature


{-| A `Delta` represents the difference between two temperatures.
-}
type alias Delta =
  Temperature.Delta


{-| Tempereature deltas are stored as a number of Celsius degrees.
-}
type alias CelsiusDegrees =
  Temperature.CelsiusDegrees


{-| Construct a temperature from a number of degrees Celsius.
-}
degreesCelsius : Float -> Temperature.Temperature
degreesCelsius =
  Temperature.degreesCelsius


{-| Convert a temperature to a number of degrees Celsius.
-}
inDegreesCelsius : Temperature.Temperature -> Float
inDegreesCelsius =
  Temperature.inDegreesCelsius


{-| Construct a temperature from a number of degrees Fahrenheit.
-}
degreesFahrenheit : Float -> Temperature.Temperature
degreesFahrenheit =
  Temperature.degreesFahrenheit


{-| Convert a temperature to a number of degrees Fahrenheit.
-}
inDegreesFahrenheit : Temperature.Temperature -> Float
inDegreesFahrenheit =
  Temperature.inDegreesFahrenheit


{-| Construct a temperature from a number of [kelvins][kelvin].

    Temperature.kelvins 300
    --> Temperature.degreesCelsius 26.85

[kelvin]: https://en.wikipedia.org/wiki/Kelvin "Kelvin"

-}
kelvins : Float -> Temperature.Temperature
kelvins =
  Temperature.kelvins


{-| Convert a temperature to a number of kelvins.

    Temperature.degreesCelsius 0
        |> Temperature.inKelvins
    --> 273.15

-}
inKelvins : Temperature.Temperature -> Float
inKelvins =
  Temperature.inKelvins


{-| [Absolute zero](https://en.wikipedia.org/wiki/Absolute_zero), equal to zero
kelvins or -273.15 degrees Celsius.

    Temperature.absoluteZero
    --> Temperature.degreesCelsius -273.15

-}
absoluteZero : Temperature.Temperature
absoluteZero =
  Temperature.absoluteZero


{-| Construct a temperature delta from a number of Celsius degrees.
-}
celsiusDegrees : Float -> Temperature.Delta
celsiusDegrees =
  Temperature.celsiusDegrees


{-| Convert a temperature delta to a number of Celsius degrees.
-}
inCelsiusDegrees : Temperature.Delta -> Float
inCelsiusDegrees =
  Temperature.inCelsiusDegrees


{-| Construct a temperature delta from a number of Fahrenheit degrees.

    Temperature.fahrenheitDegrees 36
    --> Temperature.celsiusDegrees 20

-}
fahrenheitDegrees : Float -> Temperature.Delta
fahrenheitDegrees =
  Temperature.fahrenheitDegrees


{-| Convert a temperature delta to a number of Fahrenheit degrees.

    Temperature.celsiusDegrees 10
        |> Temperature.inFahrenheitDegrees
    --> 18

-}
inFahrenheitDegrees : Temperature.Delta -> Float
inFahrenheitDegrees =
  Temperature.inFahrenheitDegrees


{-| -}
celsiusDegree : Temperature.Delta
celsiusDegree =
  Temperature.celsiusDegree


{-| -}
fahrenheitDegree : Temperature.Delta
fahrenheitDegree =
  Temperature.fahrenheitDegree


{-| Check if one temperature is less than another. Note the [argument order](/#argument-order)!

    roomTemperature =
        Temperature.degreesCelsius 21

    Temperature.degreesFahrenheit 50
        |> Temperature.lessThan roomTemperature
    --> True

    -- Same as:
    Temperature.lessThan roomTemperature
        (Temperature.degreesFahrenheit 50)
    --> True

-}
lessThan : Temperature.Temperature -> Temperature.Temperature -> Bool
lessThan =
  Temperature.lessThan


{-| Check if one temperature is greater than another. Note the [argument order](/#argument-order)!

    roomTemperature =
        Temperature.degreesCelsius 21

    Temperature.degreesFahrenheit 50
        |> Temperature.greaterThan roomTemperature
    --> False

    -- Same as:
    Temperature.greaterThan roomTemperature
        (Temperature.degreesFahrenheit 50)
    --> False

-}
greaterThan : Temperature.Temperature -> Temperature.Temperature -> Bool
greaterThan =
  Temperature.greaterThan


{-| Check if one temperature is less than or equal to another. Note the
[argument order](/#argument-order)!
-}
lessThanOrEqualTo : Temperature.Temperature -> Temperature.Temperature -> Bool
lessThanOrEqualTo =
  Temperature.lessThanOrEqualTo


{-| Check if one temperature is greater than or equal to another. Note the
[argument order](/#argument-order)!
-}
greaterThanOrEqualTo : Temperature.Temperature -> Temperature.Temperature -> Bool
greaterThanOrEqualTo =
  Temperature.greaterThanOrEqualTo


{-| Compare two temperatures, returning an [`Order`](https://package.elm-lang.org/packages/elm/core/latest/Basics#Order)
value indicating whether the first is less than, equal to or greater than the
second.

    Temperature.compare
        (Temperature.degreesCelsius 25)
        (Temperature.degreesFahrenheit 75)
    --> GT

    Temperature.compare
        (Temperature.degreesCelsius 25)
        (Temperature.degreesFahrenheit 77)
    --> EQ

(Note that due to floating-point roundoff, you generally shouldn't rely on
temperatures comparing as exactly equal.)

-}
compare : Temperature.Temperature -> Temperature.Temperature -> Order
compare =
  Temperature.compare


{-| Check if two temperatures are equal within a given delta tolerance. The
tolerance must be greater than or equal to zero - if it is negative, then the
result will always be false.

    Temperature.equalWithin (Temperature.fahrenheitDegrees 1)
        (Temperature.degreesCelsius 25)
        (Temperature.degreesFahrenheit 75)
    --> False

    Temperature.equalWithin (Temperature.fahrenheitDegrees 3)
        (Temperature.degreesCelsius 25)
        (Temperature.degreesFahrenheit 75)
    --> True

-}
equalWithin : Temperature.Delta -> Temperature.Temperature -> Temperature.Temperature -> Bool
equalWithin =
  Temperature.equalWithin


{-| Find the minimum of two temperatures.

    Temperature.min
        (Temperature.degreesCelsius 25)
        (Temperature.degreesFahrenheit 75)
    --> Temperature.degreesFahrenheit 75

-}
min : Temperature.Temperature -> Temperature.Temperature -> Temperature.Temperature
min =
  Temperature.min


{-| Find the maximum of two temperatures.

    Temperature.max
        (Temperature.degreesCelsius 25)
        (Temperature.degreesFahrenheit 75)
    --> Temperature.degreesCelsius 25

-}
max : Temperature.Temperature -> Temperature.Temperature -> Temperature.Temperature
max =
  Temperature.max


{-| Add a `Delta` to a `Temperature` to get a new `Temperature`.

    Temperature.degreesCelsius 25
        |> Temperature.plus
            (Temperature.celsiusDegrees 7)
    --> Temperature.degreesCelsius 32

If you want to _subtract_ a `Delta` from a `Temperature`, you can [`negate`](Quantity#negate)
the delta first and then call `plus`.

-}
plus : Temperature.Delta -> Temperature.Temperature -> Temperature.Temperature
plus =
  Temperature.plus


{-| Subtract one `Temperature` from another to get a `Delta`. Note the [argument
order](/#argument-order)!

    -- 25 degrees Celsius is 77 degrees Fahrenheit
    start =
        Temperature.degreesCelsius 25

    end =
        Temperature.degreesFahrenheit 80

    end |> Temperature.minus start
    --> Temperature.fahrenheitDegrees 3

    start |> Temperature.minus end
    --> Temperature.fahrenheitDegrees -3

-}
minus : Temperature.Temperature -> Temperature.Temperature -> Temperature.Delta
minus =
  Temperature.minus


{-| Given a lower and upper bound, clamp a given temperature to within those
bounds. Say you wanted to clamp a temperature to be between 18 and 22 degrees
Celsius:

    lowerBound =
        Temperature.degreesCelsius 18

    upperBound =
        Temperature.degreesCelsius 22

    Temperature.degreesCelsius 25
        |> Temperature.clamp lowerBound upperBound
    --> Temperature.degreesCelsius 22

    Temperature.degreesFahrenheit 67 -- approx 19.4 °C
        |> Temperature.clamp lowerBound upperBound
    --> Temperature.degreesFahrenheit 67

    Temperature.absoluteZero
        |> Temperature.clamp lowerBound upperBound
    --> Temperature.degreesCelsius 18

-}
clamp : Temperature.Temperature -> Temperature.Temperature -> Temperature.Temperature -> Temperature.Temperature
clamp =
  Temperature.clamp


{-| Find the minimum of a list of temperatures. Returns `Nothing` if the list
is empty.

    Temperature.minimum
        [ Temperature.degreesCelsius 20
        , Temperature.kelvins 300
        , Temperature.degreesFahrenheit 74
        ]
    --> Just (Temperature.degreesCelsius 20)

-}
minimum : List Temperature.Temperature -> Maybe Temperature.Temperature
minimum =
  Temperature.minimum


{-| Find the maximum of a list of temperatures. Returns `Nothing` if the list
is empty.

    Temperature.maximum
        [ Temperature.degreesCelsius 20
        , Temperature.kelvins 300
        , Temperature.degreesFahrenheit 74
        ]
    --> Just (Temperature.kelvins 300)

-}
maximum : List Temperature.Temperature -> Maybe Temperature.Temperature
maximum =
  Temperature.maximum


{-| Sort a list of temperatures from lowest to highest.

    Temperature.sort
        [ Temperature.degreesCelsius 20
        , Temperature.kelvins 300
        , Temperature.degreesFahrenheit 74
        ]
    --> [ Temperature.degreesCelsius 20
    --> , Temperature.degreesFahrenheit 74
    --> , Temperature.kelvins 300
    --> ]

-}
sort : List Temperature.Temperature -> List Temperature.Temperature
sort =
  Temperature.sort


{-| Sort an arbitrary list of values by a derived `Temperature`. If you had

    rooms =
        [ ( "Lobby", Temperature.degreesCelsius 21 )
        , ( "Locker room", Temperature.degreesCelsius 17 )
        , ( "Rink", Temperature.degreesCelsius -4 )
        , ( "Sauna", Temperature.degreesCelsius 82 )
        ]

then you could sort by temperature with

    Temperature.sortBy Tuple.second rooms
    --> [ ( "Rink", Temperature.degreesCelsius -4 )
    --> , ( "Locker room", Temperature.degreesCelsius 17 )
    --> , ( "Lobby", Temperature.degreesCelsius 21 )
    --> , ( "Sauna", Temperature.degreesCelsius 82 )
    --> ]

-}
sortBy : (a -> Temperature.Temperature) -> List a -> List a
sortBy =
  Temperature.sortBy