---
title: SOA Lapse Study Data
---

## Description

Identifier: `lapse_study`

Lapse experience data associated with Society of Actuaries' Report on the Lapse and Mortality Experience of Post-Level Premium Period Term Plans (2014).

## Columns

- `lapse_study_year` &lt;character&gt; Lapse study year.
- `duration` &lt;character&gt; Duration.
- `gender` &lt;character&gt; Gender.
- `issue_year` &lt;character&gt; Issue year group.
- `issue_age` &lt;character&gt; Issue age group.
- `face_amount` &lt;character&gt; Face amount band.
- `post_level_premium_structure` &lt;character&gt; Post-level premium structure.
- `premium_jump_ratio` &lt;character&gt; Premium jump ratio at the end of the level term.
- `risk_class` &lt;character&gt; Risk class.
- `premium_mode` &lt;character&gt; Premium payment mode.
- `exposure_amount` &lt;numeric&gt; Exposure amount.
- `exposure_count` &lt;numeric&gt; Exposure count.
- `lapse_amount` &lt;numeric&gt; Lapse amount.
- `lapse_count` &lt;numeric&gt; Lapse count.
- `policy_year` &lt;integer&gt; Policy year; derived as the starting year in `lapse_study_year`.

## Summary

Skim summary statistics  
 n obs: 345627    
 n variables: 15    

Variable type: character

|           variable           | missing | complete |   n    | min | max | empty | n_unique |
|------------------------------|---------|----------|--------|-----|-----|-------|----------|
|           duration           |    0    |  345627  | 345627 |  2  |  3  |   0   |    5     |
|         face_amount          |    0    |  345627  | 345627 |  8  | 13  |   0   |    4     |
|            gender            |    0    |  345627  | 345627 |  1  |  1  |   0   |    2     |
|          issue_age           |    0    |  345627  | 345627 |  3  |  5  |   0   |    7     |
|          issue_year          |    0    |  345627  | 345627 |  8  |  9  |   0   |    7     |
|       lapse_study_year       |    0    |  345627  | 345627 |  9  |  9  |   0   |    12    |
| post_level_premium_structure |    0    |  345627  | 345627 | 22  | 24  |   0   |    2     |
|      premium_jump_ratio      |    0    |  345627  | 345627 | 10  | 16  |   0   |    25    |
|         premium_mode         |    0    |  345627  | 345627 |  9  | 16  |   0   |    6     |
|          risk_class          |    0    |  345627  | 345627 |  7  | 13  |   0   |    9     |

Variable type: integer

|  variable   | missing | complete |   n    |  mean   |  sd  |  p0  | p25  | p50  | p75  | p100 |   hist   |
|-------------|---------|----------|--------|---------|------|------|------|------|------|------|----------|
| policy_year |    0    |  345627  | 345627 | 2007.41 | 2.92 | 2000 | 2006 | 2008 | 2010 | 2011 | ▁▁▂▂▂▆▃▇ |

Variable type: numeric

|    variable     | missing | complete |   n    |    mean    |     sd     | p0 |  p25   |  p50   |  p75   |  p100   |   hist   |
|-----------------|---------|----------|--------|------------|------------|----|--------|--------|--------|---------|----------|
| exposure_amount |    0    |  345627  | 345627 | 5855685.16 |  2.8e+07   | 0  | 250000 | 920000 | 3e+06  | 2.3e+09 | ▇▁▁▁▁▁▁▁ |
| exposure_count  |    0    |  345627  | 345627 |   19.47    |   106.44   | 0  |   1    |   3    |   11   | 9838.55 | ▇▁▁▁▁▁▁▁ |
|  lapse_amount   |    0    |  345627  | 345627 | 912165.57  | 5770952.89 | 0  |   0    |   0    | 450000 |  5e+08  | ▇▁▁▁▁▁▁▁ |
|   lapse_count   |    0    |  345627  | 345627 |    2.92    |   19.72    | 0  |   0    |   0    |   2    |  1806   | ▇▁▁▁▁▁▁▁ |

## Source

Society of Actuaries, https://www.soa.org/experience-studies/2014/research-2014-post-level-shock/