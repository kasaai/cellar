library(tidyverse)
library(vroom)

col_spec <- cols(
  agriculture_structure_indicator = col_character(),
  as_of_date = col_character(),
  base_flood_elevation = col_double(),
  basement_enclosure_crawlspace_type = col_integer(),
  reported_city = col_character(),
  condominium_indicator = col_character(),
  policy_count = col_integer(),
  county_code = col_character(),
  community_rating_system_discount = col_double(),
  date_of_loss = col_character(),
  elevated_building_indicator = col_character(),
  elevation_certificate_indicator = col_integer(),
  elevation_difference = col_double(),
  census_tract = col_character(),
  flood_zone = col_character(),
  house_worship = col_character(),
  latitude = col_double(),
  location_of_contents = col_character(),
  longitude = col_double(),
  lowest_adjacent_grade = col_double(),
  lowest_floor_elevation = col_double(),
  number_of_floors_in_the_insured_building = col_integer(),
  non_profit_indicator = col_character(),
  obstruction_type = col_integer(),
  occupancy_type = col_integer(),
  original_construction_date = col_character(),
  original_nb_date = col_character(),
  amount_paid_on_building_claim = col_double(),
  amount_paid_on_contents_claim = col_double(),
  amount_paid_on_increased_cost_of_compliance_claim = col_double(),
  post_firm_construction_indicator = col_character(),
  rate_method = col_integer(),
  small_business_indicator_building = col_character(),
  state = col_character(),
  total_building_insurance_coverage = col_double(),
  total_contents_insurance_coverage = col_double(),
  year_of_loss = col_integer(),
  reported_zip_code = col_character(),
  primary_residence = col_character()
)

d <- vroom("data/openFEMA_claims20190831.csv",
           col_names = names(col_spec$cols),
           skip = 1,
           col_types = col_spec)

mapping_basement_enclosure_crawlspace_type <- tribble(
  ~basement_enclosure_crawlspace_type, ~basement_enclosure_crawlspace_type_mapped,
  0L, "None",
  1L, "Finished Basement/Enclosure",
  2L, "Unfinished Basement/Enclosure",
  3L, "Crawlspace",
  4L, "Subgrade Crawlspace"
)

mapping_condominium_indicator <- tribble(
  ~condominium_indicator, ~condominium_indicator_mapped,
  "N", "Not a condo",
  "U", "Individual condo unit",
  "A", "Not eligible for Master Policy",
  "H", "Eligible for Master Policy - high rise",
  "L", "Eligible for Master Policy - low rise"
)

mapping_elevation_certificate_indicator <- tribble(
  ~elevation_certificate_indicator, ~elevation_certificate_indicator_mapped,
  1L, "No base flood elevation - +2 to +4 feet rates",
  2L, "No elevation certificate",
  3L, "With base flood elevation",
  4L, "No base flood elevation"
)

mapping_number_of_floors_in_the_insured_building <- tribble(
  ~number_of_floors_in_the_insured_building, ~number_of_floors_in_the_insured_building_mapped,
  1L, "One floor",
  2L, "Two floors",
  3L, "Three or more floors",
  4L, "Split-level",
  5L, "Manufactured (mobile) home or travel trailer on foundation",
  6L, "Townhouse/Rowhouse with three or more floors (RCBAP Low-rise only)"
)

mapping_occupancy_type <- tribble(
  ~occupancy_type, ~occupancy_type_mapped,
  1L, "Single family residence",
  2L, "2 to 4 unit residential buidling",
  3L, "Residential building with more than 4 units",
  4L, "Non-residential building"
)

mapping_rate_method <- tribble(
  ~rate_method, ~rate_method_mapped,
  1L, "Manual",
  2L, "Specific",
  3L, "Alternative",
  4L, "V-Zone Risk Factor Rating Form",
  5L, "Underinsured Condominium Master Policy",
  6L, "Provisional",
  7L, "Preferred Risk Policy",
  8L, "Tentative",
  9L, "MPPP Policy"
)

map_cols <- function(data, mapping_table) {
  col_name <- names(mapping_table)[[1]]
  data %>%
    left_join(mapping_table, by = col_name) %>%
    select(-!!col_name) %>%
    rename(setNames(names(mapping_table)[[2]], col_name))
}

d2 <- d %>%
  map_cols(mapping_basement_enclosure_crawlspace_type) %>%
  map_cols(mapping_condominium_indicator) %>%
  map_cols(mapping_elevation_certificate_indicator) %>%
  map_cols(mapping_number_of_floors_in_the_insured_building) %>%
  map_cols(mapping_occupancy_type) %>%
  map_cols(mapping_rate_method)

nfip_metadata <- list(
  columns = list(
    list(name = "agriculture_structure_indicator", type = "character",
         description = "Yes (Y) or No (N) indicator of whether or not a building is reported as being an agricultural structure in the policy application."),
    list(name = "as_of_date", type = "character",
         description = "The effective date of the data in the file."),
    list(name = "base_flood_elevation", type = "numeric",
         description = "Base Flood Elevation (BFE) is the elevation at which there is a 1% chance per year of flooding in feet from the elevation certificate."),
    list(name = "basement_enclosure_crawlspace_type", type = "character",
         description = "Basement is defined for purposes of the NFIP as any level or story which has its floor subgrade on all
sides."),
    list(name = "reported_city", type = "character",
         description = "The city of the insured property as reported by Write Your Own (WYO) partners"),
    list(name = "condominium_indicator", type = "character",
         description = "Indicator of what type of condominium property is being insured. "),
    list(name = "policy_count", type = "integer",
         description = "Insured units in an active status. A policy contract ceases to be in an active status as of the cancellation date or the expiration date. Residential Condominium Building Association Policy (RCBAP) contracts are stored as a single policy contract but insure multiple units and therefore represent multiple policies."),
    list(name = "county_code", type = "character",
         description = "FIPS code uniquely identifying the primary county (e.g., 011 represents Broward County) associated with the project. Note, the County Code field may not reflect the individual county the property is located as projects can be associated with more than one county."),
    list(name = "community_rating_system_discount", type = "numeric",
         description = "The Community Rating System (CRS) Classification Credit Percentage used to rate the policy. The insurance premium credit is based on whether a property is in or out of the Special Flood Hazard Area (SFHA) as shown on the community's Flood Insurance Rate Map."),
    list(name = "date_of_loss", type = "character",
         description = "Date on which water first entered the insured building."),
    list(name = "elevated_building_indicator", type = "character",
         description = "Yes (Y) or No (N) indicator of whether or not a building meets the NFIP definition of an elevated building."),
    list(name = "elevation_certificate_indicator", type = "character",
         description = "Indicates if a policy has been rated with elevation certificate."),
    list(name = "elevation_difference", type = "numeric",
         description = "Difference in feet between the elevation of the lowest floor used for rating or the floodproofed elevation and the base flood elevation (BFE), or base flood depth, as appropriate from the elevation certificate."),
    list(name = "census_tract", type = "character",
         description = "US Census Bureau defined census Tracts; statistical subdivisions of a county or equivalent entity that are updated prior to each decennial census. The NFIP relies on our geocoding service to assign census tract code. 11 digit code defining census tract"),
    list(name = "flood_zone", type = "character",
         description = "Flood zone derived from the Flood Insurance Rate Map (FIRM) used to rate the insured property."),
    list(name = "house_worship", type = "character",
         description = "Yes (Y) or No (N) indicator of whether or not a building is reported as being a house of worship in the policy application."),
    list(name = "latitude", type = "numeric",
         description = "Approximate latitude of the insured building (to 1 decimal place). This represents the approximate location of the insured property. The precision has been lessened to ensure individual privacy. This may result in a point location that exists in an incorrect county or state. Use the state and county fields for record aggregation for these dimensions."),
    list(name = "location_of_contents", type = "character",
         description = "Where within the structure the contents are located."),
    list(name = "longitude", type = "numeric",
         description = "Approximate longitude of the insured building (to 1 decimal place). This represents the approximate location of the insured property. The precision has been lessened to ensure individual privacy. This may result in a point location that exists in an incorrect county or state. Use the state and county fields for record aggregation for these dimensions."),
    list(name = "lowest_adjacent_grade", type = "numeric",
         description = "Lowest natural grade adjacent to the insured structure prior to excavating or filling. The difference in feet of the lowest natural grade adjacent to the building from the reference level of the building."),
    list(name = "lowest_floor_elevation", type = "numeric",
         description = "A building's lowest floor is the floor or level (including basement/enclosure/crawlspace/subgrade crawlspace) that is used as the point of reference when rating a building. This includes the level to which a building is floodproofed. The elevation in feet of the reference level of the building from the elevation certificate."),
    list(name = "number_of_floors_in_the_insured_building", type = "character",
         description = "Number of floors in the insured building."),
    list(name = "non_profit_indicator", type = "character",
         description = "Yes (Y) or No (N) indicator of whether or not a building is reported as being a non-profit in the policy application."),
    list(name = "obstruction_type", type = "integer",
         description = "Code that gives the type of obstruction (if any) in the enclosure (if any). "),
    list(name = "occupancy_type", type = "character",
         description = "Use and occupancy type of the insured structure."),
    list(name = "original_construction_date", type = "character",
         description = "The original date of the construction of the building."),
    list(name = "original_nb_date", type = "character",
         description = "The original date of the flood policy."),
    list(name = "amount_paid_on_building_claim", type = "numeric",
         description = "Dollar amount paid on the building claim. In some instances, a negative amount may appear which occurs when a check issued to a policy holder isn't cashed and has to be re-issued."),
    list(name = "amount_paid_on_contents_claim", type = "numeric",
         description = "Dollar amount paid on the contents claim. In some instances, a negative amount may appear, which occurs when a check issued to a policy holder isn't cashed and has to be re-issued."),
    list(name = "amount_paid_on_increased_cost_of_compliance_claim", type = "numeric",
         description = "Dollar amount paid on the Increased Cost of Compliance (ICC) claim. Increased Cost of Compliance  (ICC) coverage is one of several flood insurances resources for policyholders who need additional help rebuilding after a flood. It provides up to $30,000 to help cover the cost of mitigation measures that will reduce the flood risk."),
    list(name = "post_firm_construction_indicator", type = "character",
         description = "Yes or No Indicator on whether construction was started before or after publication of the FIRM.  For insurance rating purposes, buildings for which the start of construction or substantial improvement was after December 31, 1974, or on or after the effective date of the initial FIRM for the community, whichever is later, are considered Post-FIRM construction."),
    list(name = "rate_method", type = "character",
         description = "Policy rating method."),
    list(name = "small_business_indicator_building", type = "character",
         description = "Yes (Y) or No (N) indicator of whether or not the insured represents a small business. Small business is defined as a business with fewer than 100 employees in the policy application."),
    list(name = "state", type = "character",
         description = "State in which the insured property is located."),
    list(name = "total_building_insurance_coverage", type = "numeric",
         description = "Total insurance amount in dollars on the building."),
    list(name = "total_contents_insurance_coverage", type = "numeric",
         description = "Total insurance amount in dollars on the contents."),
    list(name = "year_of_loss", type = "character",
         description = "Year in which the flood loss occurred."),
    list(name = "reported_zip_code", type = "character",
         description = "5 digit Postal Zip Code of the insured property."),
    list(name = "primary_residence", type = "character",
         description = "Yes (Y) or No (N) indicator of whether or not a building is a primary residence.")
  ),
  source = "Data and column descriptions from FEMA, https://www.fema.gov/media-library/assets/documents/180374",
  title = "FIMA NFIP Redacted Claims Data Set"
)
