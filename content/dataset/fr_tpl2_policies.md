---
title: French Third-Party Liability (Policies)
---

## Description

Policy-level data for third-party liability (TPL) claims for an unknown
insurer in France. Contains policyholder characteristics along with claim
count over a one year period. Can be joined with `fr_tpl2_claims`.

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

Skim summary statistics  
 n obs: 678013    
 n variables: 12    

Variable type: character

|   variable    | missing | complete |   n    | min | max | empty | n_unique |
|---------------|---------|----------|--------|-----|-----|-------|----------|
|     area      |    0    |  678013  | 678013 |  1  |  1  |   0   |    6     |
|    region     |    0    |  678013  | 678013 |  3  |  3  |   0   |    22    |
| vehicle_brand |    0    |  678013  | 678013 |  2  |  3  |   0   |    11    |
|  vehicle_gas  |    0    |  678013  | 678013 |  6  |  7  |   0   |    2     |
| vehicle_power |    0    |  678013  | 678013 |  1  |  2  |   0   |    12    |

Variable type: integer

|  variable   | missing | complete |   n    |  mean   |   sd    | p0 | p25 | p50 | p75  | p100  |   hist   |
|-------------|---------|----------|--------|---------|---------|----|-----|-----|------|-------|----------|
| bonus_malus |    0    |  678013  | 678013 |  59.76  |  15.64  | 50 | 50  | 50  |  64  |  230  | ▇▂▁▁▁▁▁▁ |
|   density   |    0    |  678013  | 678013 | 1792.42 | 3958.65 | 1  | 92  | 393 | 1658 | 27000 | ▇▁▁▁▁▁▁▁ |
| driver_age  |    0    |  678013  | 678013 |  45.5   |  14.14  | 18 | 34  | 44  |  55  |  100  | ▃▇▇▇▃▂▁▁ |
| vehicle_age |    0    |  678013  | 678013 |  7.04   |  5.67   | 0  |  2  |  6  |  11  |  100  | ▇▂▁▁▁▁▁▁ |

Variable type: numeric

|  variable  | missing | complete |   n    |    mean    |     sd     |   p0   |   p25   |   p50   |  p75  |  p100   |   hist   |
|------------|---------|----------|--------|------------|------------|--------|---------|---------|-------|---------|----------|
|  exposure  |    0    |  678013  | 678013 |    0.53    |    0.36    | 0.0027 |  0.18   |  0.49   | 0.99  |  2.01   | ▇▅▃▇▁▁▁▁ |
| num_claims |    0    |  678013  | 678013 |   0.053    |    0.24    |   0    |    0    |    0    |   0   |   16    | ▇▁▁▁▁▁▁▁ |
| policy_id  |    0    |  678013  | 678013 | 2621856.92 | 1641782.75 |   1    | 1157951 | 2272152 | 4e+06 | 6114330 | ▅▆▇▂▅▆▂▂ |

## Source

R package 'CASdatasets', http://dutangc.free.fr/pub/RRepos/web/CASdatasets-index.html