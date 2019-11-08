---
title: Cellar
---



## Cellar

Cellar is a collection of community-curated open datasets for insurance
analytics. It promotes usability and discoverability of insurance
datasets by conforming to tidy data principles and making data available via a
uniform interface.

## data.txt and pins

Cellar is organized according to the [data.txt specification](https://datatxt.org/),
which outlines how websites describe their data content. The [datasets](dataset/),
which are documented on this site,
can be accesed via the [cellar R package](https://github.com/kasaai/cellar/tree/master/r).

For example, to access the [Schedule P dataset](https://cellar.kasa.ai/dataset/schedule_p/), you can execute the
following:


```r
# install.packages("remotes")
# remotes::install_github("kasaai/cellar/r")

library(cellar)
schedule_p <- cellar_pull("schedule_p")
dplyr::glimpse(schedule_p)
```

```
## Observations: 77,900
## Variables: 16
## $ lob                   <chr> "private_passenger_auto", "private_passeng…
## $ group_code            <chr> "43", "43", "43", "43", "43", "43", "43", …
## $ group_name            <chr> "IDS Property Cas Ins Co", "IDS Property C…
## $ accident_year         <int> 1988, 1989, 1990, 1991, 1992, 1993, 1994, …
## $ development_year      <int> 1988, 1989, 1990, 1991, 1992, 1993, 1994, …
## $ development_lag       <int> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, …
## $ incurred_loss         <dbl> 607, 2254, 5843, 11422, 19933, 24604, 4073…
## $ cumulative_paid_loss  <dbl> 133, 934, 2030, 4537, 7564, 8343, 12565, 1…
## $ bulk_loss             <dbl> 226, 495, 1669, 2941, 4885, 7823, 16851, 1…
## $ earned_premium_direct <dbl> 957, 3695, 6138, 17533, 29341, 37194, 4609…
## $ earned_premium_ceded  <dbl> 62, 288, 249, 749, 1694, 2056, 3490, 3883,…
## $ earned_premium_net    <dbl> 895, 3407, 5889, 16784, 27647, 35138, 4260…
## $ single                <int> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, …
## $ posted_reserve_97     <dbl> 73044, 73044, 73044, 73044, 73044, 73044, …
## $ calendar_year         <dbl> 1988, 1989, 1990, 1991, 1992, 1993, 1994, …
## $ incremental_paid_loss <dbl> 133, 934, 2030, 4537, 7564, 8343, 12565, 1…
```

## Contributing

We are in the process of migrating data from various online sources to Cellar.
If you have suggestions on datasets to prioritize, or would like to help out,
please reach out. We are on [GitHub](https://github.com/kasaai/cellar), [Twitter](https://twitter.com/kasaai_), and [Slack](https://slack.kasa.ai).
