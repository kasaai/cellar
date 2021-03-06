---
tags: ["list-doc"]
title: Schedule P Data
---

## Description

Identifier: `schedule_p`

Triangle data from Schedule P for various companies, from accident years 1988-1997.
    Each triangle contains 10 development lags. The lines of business included are

    - Private passenger auto liability/medical
    - Commercial auto/truck liability/medical
    - Workers' compensation
    - Medical malpractice – claims made
    - Other liability – occurrence
    - Product liability – occurrence

## Vintages

`ad0d405` (current)

## Columns

- `lob` &lt;character&gt; Line of business.
- `group_code` &lt;character&gt; NAIC company code.
- `group_name` &lt;character&gt; Company name.
- `accident_year` &lt;integer&gt; Accident year.
- `development_year` &lt;integer&gt; Development year.
- `development_lag` &lt;integer&gt; Development lag.
- `incurred_loss` &lt;numeric&gt; Incurred losses and allocated expenses reported at year end.
- `cumulative_paid_loss` &lt;numeric&gt; Cumulative paid losses and allocated expenses at year end.
- `bulk_loss` &lt;numeric&gt; Bulk and IBNR reserves on net losses and defense and cost containment expenses reported at year end.
- `earned_premium_direct` &lt;numeric&gt; Premiums earned at incurral year: direct and assumed.
- `earned_premium_ceded` &lt;numeric&gt; Premiums earned at incurral year: ceded.
- `earned_premium_net` &lt;numeric&gt; Premiums earned at incurral year: net.
- `single` &lt;integer&gt; 1 indicates a single entity, 0 indicates a group insurer.
- `posted_reserve_97` &lt;numeric&gt; Posted reserves in year 1997 taken from the Underwriting and Investment exhibit.
character(0)
- `incremental_paid_loss` &lt;numeric&gt; Incremental paid loss.

## Summary


|                         |           |
|:------------------------|:----------|
|Name                     |Piped data |
|Number of rows           |77900      |
|Number of columns        |16         |
|_______________________  |           |
|Column type frequency:   |           |
|character                |3          |
|numeric                  |13         |
|________________________ |           |
|Group variables          |None       |


**Variable type: character**

|skim_variable | n_missing| complete_rate| min| max| empty| n_unique| whitespace|
|:-------------|---------:|-------------:|---:|---:|-----:|--------:|----------:|
|lob           |         0|             1|  15|  22|     0|        6|          0|
|group_code    |         0|             1|   2|   5|     0|      379|          0|
|group_name    |         0|             1|   9|  36|     0|      376|          0|


**Variable type: numeric**

|skim_variable         | n_missing| complete_rate|     mean|        sd|     p0|  p25|    p50|  p75|     p100|hist  |
|:---------------------|---------:|-------------:|--------:|---------:|------:|----:|------:|----:|--------:|:-----|
|accident_year         |         0|             1|  1992.50|      2.87|   1988| 1990| 1992.5| 1995|     1997|▇▇▇▇▇ |
|development_year      |         0|             1|  1997.00|      4.06|   1988| 1994| 1997.0| 2000|     2006|▃▇▇▇▃ |
|development_lag       |         0|             1|     5.50|      2.87|      1|    3|    5.5|    8|       10|▇▇▇▇▇ |
|incurred_loss         |         0|             1| 20039.13| 339970.95| -12899|    0|  233.0| 2500| 11693004|▇▁▁▁▁ |
|cumulative_paid_loss  |         0|             1| 16603.33| 300789.90| -20180|    0|  140.0| 1780| 10512108|▇▁▁▁▁ |
|bulk_loss             |         0|             1|  1609.94|  43242.69| -32101|    0|    0.0|   49|  3830524|▇▁▁▁▁ |
|earned_premium_direct |         0|             1| 27929.30| 443190.94|  -6518|   21|  736.0| 5586| 15065713|▇▁▁▁▁ |
|earned_premium_ceded  |         0|             1|  1853.28|   9654.34|  -6214|    0|   88.0|  906|   313122|▇▁▁▁▁ |
|earned_premium_net    |         0|             1| 26076.02| 435459.73|  -9731|   10|  418.0| 3687| 14923375|▇▁▁▁▁ |
|single                |         0|             1|     0.74|      0.44|      0|    0|    1.0|    1|        1|▃▁▁▁▇ |
|posted_reserve_97     |         0|             1| 41175.83| 499938.13|      0|  113| 1065.0| 6375| 13593476|▇▁▁▁▁ |
|calendar_year         |         0|             1|  1997.00|      4.06|   1988| 1994| 1997.0| 2000|     2006|▃▇▇▇▃ |
|incremental_paid_loss |         0|             1|  1930.80|  56629.76| -39688|    0|    0.0|   92|  4491070|▇▁▁▁▁ |



## Source

Casualty Actuarial Society, http://www.casact.org/research/index.cfm?fa=loss_reserves_data