# This will be my example for the Causal Impact model

# I like to use it in concert with the R Package that does 

library(tidyverse)
library(CausalImpact)
library(janitor)

# Pull state GDP information by quarter from Bureau of Economic Analysis
# This can be easily downloaded via https://www.bea.gov/data/gdp/gdp-state

# First thing we do is load the data

state_gdp_quarter <- read_csv("download.csv",skip = 4)

# Now, this data will be easier to work with if its transposed
state_gdp_cleaned <- state_gdp_quarter

# First row is total US, last three rows are junk and we need to get rid of them
# Remove first row and last three rows from dataset
state_gdp_cleaned <- state_gdp_cleaned %>%
  slice(2:(n() - 3))

rownames(state_gdp_cleaned) <- state_gdp_cleaned$GeoName

# Now lets tranpose to make it easier to work with
state_gdp_cleaned <- t(state_gdp_cleaned)

# Get rid of our excess rows with state names and codes
state_gdp_cleaned <- state_gdp_cleaned[3:70,]

# Convert to a data frame
state_gdp_cleaned <- as.data.frame(state_gdp_cleaned)

# And finally, lets make sure all the columns are numeric
state_gdp_cleaned <- state_gdp_cleaned %>%
  mutate_if(is.character,as.numeric)

# Create a correlation matrix to identify which states have the strongest
# correlation to Illinois in GDP growth prior to the tax change

state_gdp_preperiod <- state_gdp_cleaned[3:52,]
illinois_gdp_preperiod <- state_gdp_preperiod[,14]

state_gdp_correlation <- c()

for(i in 1:ncol(state_gdp_preperiod)) {
  state_gdp_correlation[i] = cor(illinois_gdp_preperiod,state_gdp_preperiod[,i])
}

# State with best correlation to Illinois is Wisconsin. Go figure

# Create a new dataset that just has the two states
comp_data <- cbind(state_gdp_cleaned[,14],state_gdp_cleaned[,50])

# Visualize the comparison
matplot(comp_data,type="l")

pre.period <- c(1,52)
post.period <- c(53,68)

impact <- CausalImpact(comp_data,pre.period,post.period)

plot(impact)
summary(impact)

# This shows a significant negative effect of the tax hike. 

# What if we try it but end the model before covid hits?

comp_data_precovid <- comp_data[1:60,]

pre.period <- c(1,52)
post.period <- c(53,60)

impact <- CausalImpact(comp_data_precovid,pre.period,post.period)

plot(impact)
summary(impact)

# So what's the problem with this? Well Wisconsin does not have a flat income tax, they have a graduated income tax
# They also made changes to tinker with the tax code in 2019 and 2020, so not a great control group

# How about instead we look at all states with flat income taxes that didn't make tax policy changes during
# the period in question 

# According to this:
# These states have flat income taxes: CO, IL, IN, KY, MA, MI, NC, PA, UT

# Colorado had the same tax rate from 2000 to 2019 - https://leg.colorado.gov/agencies/legislative-council-staff/individual-income-tax%C2%A0
# This document has a lot of good info on states from 2000 to 2014
# https://files.taxfoundation.org/20190311152905/state_individualincome_rates-2000-2012-20130219.pdf?_gl=1*1iqfu44*_ga*MTk1MzI0ODk5NC4xNjU5ODMyNjQ5*_ga_FP7KWDV08V*MTY1OTgzMjY0OC4xLjEuMTY1OTgzNDM1MC42MA..

# Indiana was at 3.4% at one point and is now at 3.23% so we should exclude them
# MA is at 5 and was at 5.25, should exclude
# Kentucky had a graduated tax that became flat recently
# Michigan dropped their tax rate since 2012
# North Carolina had graduated and changed.
# Utah dropped from 4 to 




