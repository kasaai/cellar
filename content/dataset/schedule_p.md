---
title: Schedule P Data
---

## Description

Triangle data from Schedule P for various companies, from accident years 1988-1997.
Each triangle contains 10 development lags. The lines of business included are

- Private passenger auto liability/medical
- Commercial auto/truck liability/medical
- Workers' compensation
- Medical malpractice – claims made
- Other liability – occurrence
- Product liability – occurrence

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
- `calendar_year` &lt;numeric&gt; Calendar year.
- `incremental_paid_loss` &lt;numeric&gt; Incremental paid loss.

## Summary

Skim summary statistics  
 n obs: 77900    
 n variables: 16    

Variable type: character

|  variable  | missing | complete |   n   | min | max | empty | n_unique |
|------------|---------|----------|-------|-----|-----|-------|----------|
| group_code |    0    |  77900   | 77900 |  2  |  5  |   0   |   379    |
| group_name |    0    |  77900   | 77900 |  9  | 36  |   0   |   376    |
|    lob     |    0    |  77900   | 77900 | 15  | 22  |   0   |    6     |

Variable type: integer

|     variable     | missing | complete |   n   |  mean  |  sd  |  p0  | p25  |  p50   | p75  | p100 |   hist   |
|------------------|---------|----------|-------|--------|------|------|------|--------|------|------|----------|
|  accident_year   |    0    |  77900   | 77900 | 1992.5 | 2.87 | 1988 | 1990 | 1992.5 | 1995 | 1997 | ▇▃▃▃▃▃▃▇ |
| development_lag  |    0    |  77900   | 77900 |  5.5   | 2.87 |  1   |  3   |  5.5   |  8   |  10  | ▇▃▃▃▃▃▃▇ |
| development_year |    0    |  77900   | 77900 |  1997  | 4.06 | 1988 | 1994 |  1997  | 2000 | 2006 | ▂▂▃▇▅▃▂▂ |
|      single      |    0    |  77900   | 77900 |  0.74  | 0.44 |  0   |  0   |   1    |  1   |  1   | ▃▁▁▁▁▁▁▇ |

Variable type: numeric

|       variable        | missing | complete |   n   |   mean   |    sd     |   p0   | p25  | p50  | p75  |  p100   |   hist   |
|-----------------------|---------|----------|-------|----------|-----------|--------|------|------|------|---------|----------|
|       bulk_loss       |    0    |  77900   | 77900 | 1609.94  | 43242.69  | -32101 |  0   |  0   |  49  | 3830524 | ▇▁▁▁▁▁▁▁ |
|     calendar_year     |    0    |  77900   | 77900 |   1997   |   4.06    |  1988  | 1994 | 1997 | 2000 |  2006   | ▂▂▃▇▅▃▂▂ |
| cumulative_paid_loss  |    0    |  77900   | 77900 | 16603.33 |   3e+05   | -20180 |  0   | 140  | 1780 | 1.1e+07 | ▇▁▁▁▁▁▁▁ |
| earned_premium_ceded  |    0    |  77900   | 77900 | 1853.28  |  9654.34  | -6214  |  0   |  88  | 906  | 313122  | ▇▁▁▁▁▁▁▁ |
| earned_premium_direct |    0    |  77900   | 77900 | 27929.3  | 443190.94 | -6518  |  21  | 736  | 5586 | 1.5e+07 | ▇▁▁▁▁▁▁▁ |
|  earned_premium_net   |    0    |  77900   | 77900 | 26076.02 | 435459.73 | -9731  |  10  | 418  | 3687 | 1.5e+07 | ▇▁▁▁▁▁▁▁ |
| incremental_paid_loss |    0    |  77900   | 77900 |  1930.8  | 56629.76  | -39688 |  0   |  0   |  92  | 4491070 | ▇▁▁▁▁▁▁▁ |
|     incurred_loss     |    0    |  77900   | 77900 | 20039.13 | 339970.95 | -12899 |  0   | 233  | 2500 | 1.2e+07 | ▇▁▁▁▁▁▁▁ |
|   posted_reserve_97   |    0    |  77900   | 77900 | 41175.83 |   5e+05   |   0    | 113  | 1065 | 6375 | 1.4e+07 | ▇▁▁▁▁▁▁▁ |

## Source

Casualty Actuarial Society, http://www.casact.org/research/index.cfm?fa=loss_reserves_data