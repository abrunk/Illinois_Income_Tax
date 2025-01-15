library(tidyverse)

# Create a database of major state tax policy changes
state_tax_changes <- tibble(
  state = "Alabama",
  year = 2006,
  tax_type = "Income",
  description = "Modified income tax deductions and exemptions",
  rate_change = FALSE,
  major_reform = FALSE
) %>%
  add_row(
    state = "Alaska",
    year = 2006,
    tax_type = "Corporate",
    description = "Implemented new oil and gas production tax structure",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Arizona",
    year = 2006,
    tax_type = "Income",
    description = "Reduced all individual income tax rates by 10%",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "California",
    year = 2009,
    tax_type = "Income",
    description = "Temporary 0.25% surcharge on all income tax rates",
    rate_change = TRUE,
    major_reform = FALSE
  ) %>%
  add_row(
    state = "California",
    year = 2012,
    tax_type = "Income",
    description = "Proposition 30: Created new top tax brackets of 10.3%, 11.3%, and 12.3%",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Colorado",
    year = 2020,
    tax_type = "Income",
    description = "Reduced flat tax rate from 4.63% to 4.55%",
    rate_change = TRUE,
    major_reform = FALSE
  ) %>%
  add_row(
    state = "Connecticut",
    year = 2009,
    tax_type = "Income",
    description = "Added new top rate of 6.5% for high earners",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Delaware",
    year = 2013,
    tax_type = "Income",
    description = "Made permanent the top rate of 6.6%",
    rate_change = TRUE,
    major_reform = FALSE
  ) %>%
  add_row(
    state = "Florida",
    year = 2019,
    tax_type = "Corporate",
    description = "Reduced corporate tax rate from 5.5% to 4.458%",
    rate_change = TRUE,
    major_reform = FALSE
  ) %>%
  add_row(
    state = "Georgia",
    year = 2018,
    tax_type = "Income",
    description = "Reduced top rate from 6% to 5.75%",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Hawaii",
    year = 2009,
    tax_type = "Income",
    description = "Added new top rates of 9%, 10%, and 11% for high earners",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Idaho",
    year = 2018,
    tax_type = "Income",
    description = "Reduced all individual income tax rates by 0.475%",
    rate_change = TRUE,
    major_reform = FALSE
  ) %>%
  add_row(
    state = "Illinois",
    year = 2011,
    tax_type = "Income",
    description = "Increased flat tax rate from 3% to 5%",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Illinois",
    year = 2015,
    tax_type = "Income",
    description = "Partial sunset of 2011 tax increase, rate decreased to 3.75%",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Illinois",
    year = 2017,
    tax_type = "Income",
    description = "Increased flat tax rate to 4.95%",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Indiana",
    year = 2015,
    tax_type = "Income",
    description = "Began gradual reduction of flat tax rate from 3.4% to 3.23%",
    rate_change = TRUE,
    major_reform = FALSE
  ) %>%
  add_row(
    state = "Iowa",
    year = 2018,
    tax_type = "Income",
    description = "Comprehensive tax reform reducing rates and brackets",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Kansas",
    year = 2012,
    tax_type = "Income",
    description = "Major tax cut reducing rates and eliminating tax on pass-through income",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Kansas",
    year = 2017,
    tax_type = "Income",
    description = "Reversed 2012 tax cuts, restored third tax bracket",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Kentucky",
    year = 2018,
    tax_type = "Income",
    description = "Replaced graduated income tax with 5% flat tax",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Louisiana",
    year = 2008,
    tax_type = "Income",
    description = "Eliminated excess itemized deductions",
    rate_change = FALSE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Maine",
    year = 2011,
    tax_type = "Income",
    description = "Reduced top rate from 8.5% to 7.95%",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Maryland",
    year = 2008,
    tax_type = "Income",
    description = "Added new top rate of 6.25% for high earners",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Massachusetts",
    year = 2020,
    tax_type = "Income",
    description = "Maintained flat tax rate of 5.05%",
    rate_change = FALSE,
    major_reform = FALSE
  ) %>%
  add_row(
    state = "Michigan",
    year = 2011,
    tax_type = "Income",
    description = "Modified pension taxation and eliminated various credits",
    rate_change = FALSE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Michigan",
    year = 2015,
    tax_type = "Income",
    description = "Maintained flat tax rate of 4.25%",
    rate_change = FALSE,
    major_reform = FALSE
  ) %>%
  add_row(
    state = "Minnesota",
    year = 2013,
    tax_type = "Income",
    description = "Added new top rate of 9.85% for high earners",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Mississippi",
    year = 2016,
    tax_type = "Income",
    description = "Began phase-out of 3% tax bracket",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Missouri",
    year = 2014,
    tax_type = "Income",
    description = "Gradual reduction in top rate from 6% to 5.5%",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Montana",
    year = 2007,
    tax_type = "Income",
    description = "Reformed bracket structure and reduced rates",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Nebraska",
    year = 2012,
    tax_type = "Income",
    description = "Indexed brackets for inflation",
    rate_change = FALSE,
    major_reform = FALSE
  ) %>%
  add_row(
    state = "Nevada",
    year = 2015,
    tax_type = "Corporate",
    description = "Created Commerce Tax on business revenue",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "New Hampshire",
    year = 2016,
    tax_type = "Corporate",
    description = "Reduced Business Profits Tax rate",
    rate_change = TRUE,
    major_reform = FALSE
  ) %>%
  add_row(
    state = "New Jersey",
    year = 2009,
    tax_type = "Income",
    description = "Added new top rate of 8.97% for income over $500,000",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "New Mexico",
    year = 2019,
    tax_type = "Income",
    description = "Added new top rate of 5.9% for high earners",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "New York",
    year = 2009,
    tax_type = "Income",
    description = "Added new top rates of 7.85% and 8.97%",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "North Carolina",
    year = 2013,
    tax_type = "Income",
    description = "Major reform replacing graduated rates with flat tax",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "North Dakota",
    year = 2015,
    tax_type = "Income",
    description = "Reduced all individual income tax rates",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Ohio",
    year = 2005,
    tax_type = "Income",
    description = "Five-year 21% across-the-board rate reduction",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Oklahoma",
    year = 2012,
    tax_type = "Income",
    description = "Reduced top rate from 5.25% to 5%",
    rate_change = TRUE,
    major_reform = FALSE
  ) %>%
  add_row(
    state = "Oregon",
    year = 2009,
    tax_type = "Income",
    description = "Added new top rates of 10.8% and 11%",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Pennsylvania",
    year = 2005,
    tax_type = "Income",
    description = "Maintained flat tax rate of 3.07%",
    rate_change = FALSE,
    major_reform = FALSE
  ) %>%
  add_row(
    state = "Rhode Island",
    year = 2011,
    tax_type = "Income",
    description = "Reduced number of brackets and top rate",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "South Carolina",
    year = 2007,
    tax_type = "Income",
    description = "Reduced top rate from 7% to 6%",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "South Dakota",
    year = 2016,
    tax_type = "Sales",
    description = "Increased state sales tax from 4% to 4.5%",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Tennessee",
    year = 2016,
    tax_type = "Income",
    description = "Began phase-out of Hall Income Tax",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Texas",
    year = 2015,
    tax_type = "Corporate",
    description = "Reduced franchise tax rates by 25%",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Utah",
    year = 2007,
    tax_type = "Income",
    description = "Replaced graduated rates with 5% flat tax",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Vermont",
    year = 2009,
    tax_type = "Income",
    description = "Reduced rates and reformed bracket structure",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Virginia",
    year = 2013,
    tax_type = "All",
    description = "Comprehensive transportation funding reform",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Washington",
    year = 2010,
    tax_type = "Sales",
    description = "Temporarily increased sales tax on certain services",
    rate_change = TRUE,
    major_reform = FALSE
  ) %>%
  add_row(
    state = "West Virginia",
    year = 2007,
    tax_type = "Corporate",
    description = "Began phase-down of corporate net income tax rate",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Wisconsin",
    year = 2013,
    tax_type = "Income",
    description = "Reduced rates across all brackets",
    rate_change = TRUE,
    major_reform = TRUE
  ) %>%
  add_row(
    state = "Wyoming",
    year = 2020,
    tax_type = "Property",
    description = "Modified assessment ratios for industrial property",
    rate_change = TRUE,
    major_reform = FALSE
  )

# Function to identify states with stable tax policies
find_stable_states <- function(data, start_year, end_year) {
  stable_states <- data %>%
    filter(year >= start_year & year <= end_year) %>%
    group_by(state) %>%
    summarize(
      major_changes = sum(major_reform),
      rate_changes = sum(rate_change),
      .groups = 'drop'
    ) %>%
    filter(major_changes == 0, rate_changes == 0)
  
  return(stable_states)
}

# Function to analyze tax changes by year
analyze_changes_by_year <- function(data) {
  yearly_summary <- data %>%
    group_by(