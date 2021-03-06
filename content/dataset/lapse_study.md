---
tags: ["list-doc"]
title: SOA Lapse Study Data
---

## Description

Identifier: `lapse_study`

Lapse experience data associated with Society of Actuaries' Report on the Lapse and Mortality Experience of Post-Level Premium Period Term Plans (2014).

## Vintages

`85b7db9` (current)

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


|                         |           |
|:------------------------|:----------|
|Name                     |Piped data |
|Number of rows           |345627     |
|Number of columns        |15         |
|_______________________  |           |
|Column type frequency:   |           |
|character                |10         |
|numeric                  |5          |
|________________________ |           |
|Group variables          |None       |


**Variable type: character**

|skim_variable                | n_missing| complete_rate| min| max| empty| n_unique| whitespace|
|:----------------------------|---------:|-------------:|---:|---:|-----:|--------:|----------:|
|lapse_study_year             |         0|             1|   9|   9|     0|       12|          0|
|duration                     |         0|             1|   2|   3|     0|        5|          0|
|gender                       |         0|             1|   1|   1|     0|        2|          0|
|issue_year                   |         0|             1|   8|   9|     0|        7|          0|
|issue_age                    |         0|             1|   3|   5|     0|        7|          0|
|face_amount                  |         0|             1|   8|  13|     0|        4|          0|
|post_level_premium_structure |         0|             1|  22|  24|     0|        2|          0|
|premium_jump_ratio           |         0|             1|  10|  16|     0|       25|          0|
|risk_class                   |         0|             1|   7|  13|     0|        9|          0|
|premium_mode                 |         0|             1|   9|  16|     0|        6|          0|


**Variable type: numeric**

|skim_variable   | n_missing| complete_rate|       mean|          sd|   p0|    p25|    p50|     p75|         p100|hist  |
|:---------------|---------:|-------------:|----------:|-----------:|----:|------:|------:|-------:|------------:|:-----|
|exposure_amount |         0|             1| 5855685.16| 27980176.96|    0| 250000| 920000| 3000000| 2.336747e+09|▇▁▁▁▁ |
|exposure_count  |         0|             1|      19.47|      106.44|    0|      1|      3|      11| 9.838550e+03|▇▁▁▁▁ |
|lapse_amount    |         0|             1|  912165.57|  5770952.89|    0|      0|      0|  450000| 5.027999e+08|▇▁▁▁▁ |
|lapse_count     |         0|             1|       2.92|       19.72|    0|      0|      0|       2| 1.806000e+03|▇▁▁▁▁ |
|policy_year     |         0|             1|    2007.41|        2.92| 2000|   2006|   2008|    2010| 2.011000e+03|▂▂▃▅▇ |



## Source

Society of Actuaries, https://www.soa.org/experience-studies/2014/research-2014-post-level-shock/