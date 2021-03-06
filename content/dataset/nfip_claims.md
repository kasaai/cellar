---
tags: ["list-doc"]
title: FIMA NFIP Redacted Claims Data Set
---

## Description

Identifier: `nfip_claims`

Claims transactions from the Federal Insurance & Mitigation Administration National Flood Insurance Program (FIMA NFIP). Data is as of 2019-08-31.

## Vintages

`5e118d5` (current)

## Columns

- `agriculture_structure_indicator` &lt;character&gt; Yes (Y) or No (N) indicator of whether or not a building is reported as being an agricultural structure in the policy application.
- `as_of_date` &lt;character&gt; The effective date of the data in the file.
- `base_flood_elevation` &lt;numeric&gt; Base Flood Elevation (BFE) is the elevation at which there is a 1% chance per year of flooding in feet from the elevation certificate.
- `reported_city` &lt;character&gt; The city of the insured property as reported by Write Your Own (WYO) partners
- `policy_count` &lt;integer&gt; Insured units in an active status. A policy contract ceases to be in an active status as of the cancellation date or the expiration date. Residential Condominium Building Association Policy (RCBAP) contracts are stored as a single policy contract but insure multiple units and therefore represent multiple policies.
- `county_code` &lt;character&gt; FIPS code uniquely identifying the primary county (e.g., 011 represents Broward County) associated with the project. Note, the County Code field may not reflect the individual county the property is located as projects can be associated with more than one county.
- `community_rating_system_discount` &lt;numeric&gt; The Community Rating System (CRS) Classification Credit Percentage used to rate the policy. The insurance premium credit is based on whether a property is in or out of the Special Flood Hazard Area (SFHA) as shown on the community's Flood Insurance Rate Map.
- `date_of_loss` &lt;character&gt; Date on which water first entered the insured building.
- `elevated_building_indicator` &lt;character&gt; Yes (Y) or No (N) indicator of whether or not a building meets the NFIP definition of an elevated building.
- `elevation_difference` &lt;numeric&gt; Difference in feet between the elevation of the lowest floor used for rating or the floodproofed elevation and the base flood elevation (BFE), or base flood depth, as appropriate from the elevation certificate.
- `census_tract` &lt;character&gt; US Census Bureau defined census Tracts; statistical subdivisions of a county or equivalent entity that are updated prior to each decennial census. The NFIP relies on our geocoding service to assign census tract code. 11 digit code defining census tract
- `flood_zone` &lt;character&gt; Flood zone derived from the Flood Insurance Rate Map (FIRM) used to rate the insured property.
- `house_worship` &lt;character&gt; Yes (Y) or No (N) indicator of whether or not a building is reported as being a house of worship in the policy application.
- `latitude` &lt;numeric&gt; Approximate latitude of the insured building (to 1 decimal place). This represents the approximate location of the insured property. The precision has been lessened to ensure individual privacy. This may result in a point location that exists in an incorrect county or state. Use the state and county fields for record aggregation for these dimensions.
- `location_of_contents` &lt;character&gt; Where within the structure the contents are located.
- `longitude` &lt;numeric&gt; Approximate longitude of the insured building (to 1 decimal place). This represents the approximate location of the insured property. The precision has been lessened to ensure individual privacy. This may result in a point location that exists in an incorrect county or state. Use the state and county fields for record aggregation for these dimensions.
- `lowest_adjacent_grade` &lt;numeric&gt; Lowest natural grade adjacent to the insured structure prior to excavating or filling. The difference in feet of the lowest natural grade adjacent to the building from the reference level of the building.
- `lowest_floor_elevation` &lt;numeric&gt; A building's lowest floor is the floor or level (including basement/enclosure/crawlspace/subgrade crawlspace) that is used as the point of reference when rating a building. This includes the level to which a building is floodproofed. The elevation in feet of the reference level of the building from the elevation certificate.
- `non_profit_indicator` &lt;character&gt; Yes (Y) or No (N) indicator of whether or not a building is reported as being a non-profit in the policy application.
- `obstruction_type` &lt;integer&gt; Code that gives the type of obstruction (if any) in the enclosure (if any). 
- `original_construction_date` &lt;character&gt; The original date of the construction of the building.
- `original_nb_date` &lt;character&gt; The original date of the flood policy.
- `amount_paid_on_building_claim` &lt;numeric&gt; Dollar amount paid on the building claim. In some instances, a negative amount may appear which occurs when a check issued to a policy holder isn't cashed and has to be re-issued.
- `amount_paid_on_contents_claim` &lt;numeric&gt; Dollar amount paid on the contents claim. In some instances, a negative amount may appear, which occurs when a check issued to a policy holder isn't cashed and has to be re-issued.
- `amount_paid_on_increased_cost_of_compliance_claim` &lt;numeric&gt; Dollar amount paid on the Increased Cost of Compliance (ICC) claim. Increased Cost of Compliance  (ICC) coverage is one of several flood insurances resources for policyholders who need additional help rebuilding after a flood. It provides up to $30,000 to help cover the cost of mitigation measures that will reduce the flood risk.
- `post_firm_construction_indicator` &lt;character&gt; Yes or No Indicator on whether construction was started before or after publication of the FIRM.  For insurance rating purposes, buildings for which the start of construction or substantial improvement was after December 31, 1974, or on or after the effective date of the initial FIRM for the community, whichever is later, are considered Post-FIRM construction.
- `small_business_indicator_building` &lt;character&gt; Yes (Y) or No (N) indicator of whether or not the insured represents a small business. Small business is defined as a business with fewer than 100 employees in the policy application.
- `state` &lt;character&gt; State in which the insured property is located.
- `total_building_insurance_coverage` &lt;numeric&gt; Total insurance amount in dollars on the building.
- `total_contents_insurance_coverage` &lt;numeric&gt; Total insurance amount in dollars on the contents.
- `year_of_loss` &lt;integer&gt; Year in which the flood loss occurred.
- `reported_zip_code` &lt;character&gt; 5 digit Postal Zip Code of the insured property.
- `primary_residence` &lt;character&gt; Yes (Y) or No (N) indicator of whether or not a building is a primary residence.
- `basement_enclosure_crawlspace_type` &lt;character&gt; Basement is defined for purposes of the NFIP as any level or story which has its floor subgrade on all
sides.
- `condominium_indicator` &lt;character&gt; Indicator of what type of condominium property is being insured. 
- `elevation_certificate_indicator` &lt;character&gt; Indicates if a policy has been rated with elevation certificate.
- `number_of_floors_in_the_insured_building` &lt;character&gt; Number of floors in the insured building.
- `occupancy_type` &lt;character&gt; Use and occupancy type of the insured structure.
- `rate_method` &lt;character&gt; Policy rating method.

## Summary


|                         |           |
|:------------------------|:----------|
|Name                     |Piped data |
|Number of rows           |2432888    |
|Number of columns        |39         |
|_______________________  |           |
|Column type frequency:   |           |
|character                |24         |
|numeric                  |15         |
|________________________ |           |
|Group variables          |None       |


**Variable type: character**

|skim_variable                            | n_missing| complete_rate| min| max| empty| n_unique| whitespace|
|:----------------------------------------|---------:|-------------:|---:|---:|-----:|--------:|----------:|
|agriculture_structure_indicator          |   2266492|          0.07|   1|   1|     0|        2|          0|
|as_of_date                               |         0|          1.00|  10|  10|     0|        1|          0|
|reported_city                            |      4505|          1.00|   1|  30|     0|    57278|          0|
|county_code                              |      7503|          1.00|   5|   5|     0|     2976|          0|
|date_of_loss                             |         0|          1.00|  10|  10|     0|    15470|          0|
|elevated_building_indicator              |     55352|          0.98|   1|   1|     0|        2|          0|
|census_tract                             |     59300|          0.98|   5|  11|     0|    54857|          0|
|flood_zone                               |    162843|          0.93|   1|   3|     0|       96|          0|
|house_worship                            |   2189117|          0.10|   1|   1|     0|        2|          0|
|location_of_contents                     |    899478|          0.63|  43| 104|     0|        6|          0|
|non_profit_indicator                     |   2185679|          0.10|   1|   1|     0|        3|          0|
|original_construction_date               |    366561|          0.85|  10|  10|     0|    30175|          0|
|original_nb_date                         |         8|          1.00|  10|  10|     0|    15813|          0|
|post_firm_construction_indicator         |     72128|          0.97|   1|   1|     0|        2|          0|
|small_business_indicator_building        |   2168463|          0.11|   1|   1|     0|        2|          0|
|state                                    |        12|          1.00|   2|   2|     0|       55|          0|
|reported_zip_code                        |      1131|          1.00|   1|   5|     0|    29380|          0|
|primary_residence                        |   1011588|          0.58|   1|   1|     0|        2|          0|
|basement_enclosure_crawlspace_type       |        45|          1.00|   4|  29|     0|        5|          0|
|condominium_indicator                    |     58112|          0.98|  11|  38|     0|        5|          0|
|elevation_certificate_indicator          |   1823814|          0.25|  23|  45|     0|        4|          0|
|number_of_floors_in_the_insured_building |     16651|          0.99|   9|  66|     0|        6|          0|
|occupancy_type                           |     18939|          0.99|  23|  43|     0|        4|          0|
|rate_method                              |    125672|          0.95|   6|  38|     0|        9|          0|


**Variable type: numeric**

|skim_variable                                     | n_missing| complete_rate|      mean|         sd|        p0|      p25|      p50|       p75|        p100|hist  |
|:-------------------------------------------------|---------:|-------------:|---------:|----------:|---------:|--------:|--------:|---------:|-----------:|:-----|
|base_flood_elevation                              |   1949299|          0.20|     71.38|     300.58|  -6002.00|     7.00|     9.00|     14.00| 9.99800e+03|▁▇▁▁▁ |
|policy_count                                      |         8|          1.00|      1.25|       6.24|      1.00|     1.00|     1.00|      1.00| 1.09000e+03|▇▁▁▁▁ |
|community_rating_system_discount                  |         8|          1.00|      0.03|       0.06|      0.00|     0.00|     0.00|      0.05| 4.00000e-01|▇▂▁▁▁ |
|elevation_difference                              |         8|          1.00|    750.52|     432.12|  -1987.00|   999.00|   999.00|    999.00| 9.99800e+03|▂▇▁▁▁ |
|latitude                                          |     53548|          0.98|     34.04|       5.80|    -14.30|    29.90|    31.90|     39.90| 6.99000e+01|▁▁▇▅▁ |
|longitude                                         |     53548|          0.98|    -86.14|      11.11|   -170.70|   -91.40|   -87.50|    -76.90| 1.44900e+02|▁▇▁▁▁ |
|lowest_adjacent_grade                             |   2082165|          0.14|     75.46|     546.57|  -3411.00|     3.20|     6.70|     12.90| 9.99991e+04|▇▁▁▁▁ |
|lowest_floor_elevation                            |   1957817|          0.20|    148.30|     980.14|  -6002.00|     6.50|    10.30|     17.80| 9.99999e+04|▇▁▁▁▁ |
|obstruction_type                                  |    902487|          0.63|     14.21|      13.13|      0.00|    10.00|    10.00|     10.00| 9.80000e+01|▇▁▁▁▁ |
|amount_paid_on_building_claim                     |     73378|          0.97|  23674.99|   52781.61| -29207.05|   108.58|  4818.81|  24027.74| 1.00000e+07|▇▁▁▁▁ |
|amount_paid_on_contents_claim                     |    719901|          0.70|   7729.02|   22801.69|  -8484.00|     0.00|   229.00|   5830.40| 7.50000e+05|▇▁▁▁▁ |
|amount_paid_on_increased_cost_of_compliance_claim |   1272517|          0.48|    760.02|    4441.66|      0.00|     0.00|     0.00|      0.00| 6.00000e+04|▇▁▁▁▁ |
|total_building_insurance_coverage                 |         8|          1.00| 151279.38| 2777120.84|      0.00| 35000.00| 90800.00| 195000.00| 4.00000e+09|▇▁▁▁▁ |
|total_contents_insurance_coverage                 |         8|          1.00|  28190.80|   48093.94|      0.00|     0.00| 10500.00|  40000.00| 6.00000e+06|▇▁▁▁▁ |
|year_of_loss                                      |         0|          1.00|   2000.63|      11.80|   1970.00|  1992.00|  2004.00|   2011.00| 2.01900e+03|▂▅▆▇▇ |



## Source

Data and column descriptions from FEMA, https://www.fema.gov/media-library/assets/documents/180374