---
tags: ["list-doc"]
title: French Third-Party Liability (Claims)
---

## Description

Identifier: `fr_tpl2_claims`

Claim amounts data for the French Third-Party Liability (Claims) dataset.

## Vintages

`75a0af2` (current)

## Columns

- `policy_id` &lt;integer&gt; Policy ID.
- `claim_amount` &lt;numeric&gt; Claim amount.

## Summary


|                         |           |
|:------------------------|:----------|
|Name                     |Piped data |
|Number of rows           |26639      |
|Number of columns        |2          |
|_______________________  |           |
|Column type frequency:   |           |
|numeric                  |2          |
|________________________ |           |
|Group variables          |None       |


**Variable type: numeric**

|skim_variable | n_missing| complete_rate|       mean|         sd|  p0|        p25|     p50|        p75|    p100|hist  |
|:-------------|---------:|-------------:|----------:|----------:|---:|----------:|-------:|----------:|-------:|:-----|
|policy_id     |         0|             1| 2279863.83| 1577201.81| 139| 1087642.50| 2137413| 3180162.00| 6113971|▇▅▃▃▂ |
|claim_amount  |         0|             1|    2278.54|   29297.48|   1|     686.81|    1172|    1228.08| 4075401|▇▁▁▁▁ |



## Source

R package 'CASdatasets', http://dutangc.free.fr/pub/RRepos/web/CASdatasets-index.html