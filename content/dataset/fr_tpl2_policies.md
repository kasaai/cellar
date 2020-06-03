---
tags: ["list-doc"]
title: French Third-Party Liability (Policies)
---

## Description

Identifier: `fr_tpl2_policies`

Policy-level data for third-party liability (TPL) claims for an unknown
    insurer in France. Contains policyholder characteristics along with claim
    count over a one year period. Can be joined with `fr_tpl2_claims`.

## Vintages

`6b456f4` (current)

## Columns

- `policy_id` &lt;numeric&gt; Policy ID.
- `num_claims` &lt;numeric&gt; Number of claims during exposure period.
- `exposure` &lt;numeric&gt; Exposure in car years.
- `area` &lt;character&gt; Area code of insured vehicle.
- `vehicle_power` &lt;character&gt; Power of the car.
- `vehicle_age` &lt;integer&gt; Vehicle age in years.
- `driver_age` &lt;integer&gt; Age of insured driver.
- `bonus_malus` &lt;integer&gt; Bonus/malus, between 50 and 350: <100 means bonus and >100 means malus.
- `vehicle_brand` &lt;character&gt; Anonymized categories for the brand of the vehicle.
- `vehicle_gas` &lt;character&gt; Gasoline type, either diesel or regular.
- `density` &lt;integer&gt; Population density of the garage area code in people per km^2.
- `region` &lt;character&gt; Policy region in France (1970-2015 classification).

## Summary


|                         |           |
|:------------------------|:----------|
|Name                     |Piped data |
|Number of rows           |678013     |
|Number of columns        |12         |
|_______________________  |           |
|Column type frequency:   |           |
|character                |5          |
|numeric                  |7          |
|________________________ |           |
|Group variables          |None       |


**Variable type: character**

|skim_variable | n_missing| complete_rate| min| max| empty| n_unique| whitespace|
|:-------------|---------:|-------------:|---:|---:|-----:|--------:|----------:|
|area          |         0|             1|   1|   1|     0|        6|          0|
|vehicle_power |         0|             1|   1|   2|     0|       12|          0|
|vehicle_brand |         0|             1|   2|   3|     0|       11|          0|
|vehicle_gas   |         0|             1|   6|   7|     0|        2|          0|
|region        |         0|             1|   3|   3|     0|       22|          0|


**Variable type: numeric**

|skim_variable | n_missing| complete_rate|       mean|         sd| p0|        p25|        p50|        p75|       p100|hist  |
|:-------------|---------:|-------------:|----------:|----------:|--:|----------:|----------:|----------:|----------:|:-----|
|policy_id     |         0|             1| 2621856.92| 1641782.75|  1| 1157951.00| 2272152.00| 4046274.00| 6114330.00|▇▆▅▅▃ |
|num_claims    |         0|             1|       0.05|       0.24|  0|       0.00|       0.00|       0.00|      16.00|▇▁▁▁▁ |
|exposure      |         0|             1|       0.53|       0.36|  0|       0.18|       0.49|       0.99|       2.01|▇▅▆▁▁ |
|vehicle_age   |         0|             1|       7.04|       5.67|  0|       2.00|       6.00|      11.00|     100.00|▇▁▁▁▁ |
|driver_age    |         0|             1|      45.50|      14.14| 18|      34.00|      44.00|      55.00|     100.00|▅▇▆▂▁ |
|bonus_malus   |         0|             1|      59.76|      15.64| 50|      50.00|      50.00|      64.00|     230.00|▇▁▁▁▁ |
|density       |         0|             1|    1792.42|    3958.65|  1|      92.00|     393.00|    1658.00|   27000.00|▇▁▁▁▁ |



## Source

R package 'CASdatasets', http://dutangc.free.fr/pub/RRepos/web/CASdatasets-index.html