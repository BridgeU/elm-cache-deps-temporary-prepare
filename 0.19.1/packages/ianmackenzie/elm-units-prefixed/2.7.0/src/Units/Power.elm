module Units.Power exposing (Power, Watts, watts, inWatts, kilowatts, inKilowatts, megawatts, inMegawatts, metricHorsepower, inMetricHorsepower, mechanicalHorsepower, inMechanicalHorsepower, electricalHorsepower, inElectricalHorsepower)

{-| A `Power` value represents power in watts or horsepower. It is stored as a
number of watts.

Note that since `Watts` is defined as `Rate Joules Seconds` (energy per unit
time), you can construct a `Power` value using `Quantity.per`:

    power =
        energy |> Quantity.per duration

You can also do rate-related calculations with `Power` values to compute
`Energy` or `Duration`:

    energy =
        power |> Quantity.for duration

    alsoEnergy =
        duration |> Quantity.at power

    duration =
        energy |> Quantity.at_ power

[1]: https://en.wikipedia.org/wiki/Horsepower#Definitions

@docs Power, Watts


## Metric

@docs watts, inWatts, kilowatts, inKilowatts, megawatts, inMegawatts


## Horsepower

Who knew that there were not one, not two, but _three_ possible interpretations
of "one horsepower"? (Actually there are more than that, but these three
seemed the most reasonable.)

@docs metricHorsepower, inMetricHorsepower, mechanicalHorsepower, inMechanicalHorsepower, electricalHorsepower, inElectricalHorsepower

-}

import Duration
import Energy
import Power
import Quantity


{-| -}
type alias Power =
  Power.Power


{-| -}
type alias Watts =
  Power.Watts


{-| Construct a `Power` value from a number of watts.
-}
watts : Float -> Power.Power
watts =
  Power.watts


{-| Convert a `Power` value to a number of watts.
-}
inWatts : Power.Power -> Float
inWatts =
  Power.inWatts


{-| Construct a `Power` value from a number of kilowatts.
-}
kilowatts : Float -> Power.Power
kilowatts =
  Power.kilowatts


{-| Convert a `Power` value to a number of kilowatts.
-}
inKilowatts : Power.Power -> Float
inKilowatts =
  Power.inKilowatts


{-| Construct a `Power` value from a number of megawatts.
-}
megawatts : Float -> Power.Power
megawatts =
  Power.megawatts


{-| Convert a `Power` value to a number of megawatts.
-}
inMegawatts : Power.Power -> Float
inMegawatts =
  Power.inMegawatts


{-| Construct a `Power` value from an number of [metric horsepower][1].

    Power.metricHorsepower 1
    --> Power.watts 735.49875

[1]: https://en.wikipedia.org/wiki/Horsepower#Metric_horsepower

-}
metricHorsepower : Float -> Power.Power
metricHorsepower =
  Power.metricHorsepower


{-| Convert a `Power` value to a number of metric horsepower.
-}
inMetricHorsepower : Power.Power -> Float
inMetricHorsepower =
  Power.inMetricHorsepower


{-| Construct a `Power` value from an number of [mechanical horsepower][1].

    Power.mechanicalHorsepower 1
    --> Power.watts 745.6998715822702

[1]: https://en.wikipedia.org/wiki/Horsepower#Mechanical_horsepower

-}
mechanicalHorsepower : Float -> Power.Power
mechanicalHorsepower =
  Power.mechanicalHorsepower


{-| Convert a `Power` value to a number of mechanical horsepower.
-}
inMechanicalHorsepower : Power.Power -> Float
inMechanicalHorsepower =
  Power.inMechanicalHorsepower


{-| Construct a `Power` value from an number of [electrical horsepower][1].

    Power.electricalHorsepower 1
    --> Power.watts 746

[1]: https://en.wikipedia.org/wiki/Horsepower#Electrical_horsepower

-}
electricalHorsepower : Float -> Power.Power
electricalHorsepower =
  Power.electricalHorsepower


{-| Convert a `Power` value to a number of electrical horsepower.
-}
inElectricalHorsepower : Power.Power -> Float
inElectricalHorsepower =
  Power.inElectricalHorsepower