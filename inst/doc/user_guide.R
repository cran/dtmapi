## ----setup, include = FALSE---------------------------------------------------
subscription_key_available <- !identical(Sys.getenv("DTM_SUBSCRIPTION_KEY"), "")
key_available <- subscription_key_available

knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  error = TRUE,
  eval = key_available
)

## ----eval = !key_available, echo = FALSE, comment = NA------------------------
# message("No token available. Code chunks will not be evaluated.")

## ----install, eval = FALSE----------------------------------------------------
# install.packages("dtmapi")

## ----import-------------------------------------------------------------------
library(dtmapi)

## ----set_subscription_key_demo, eval = FALSE----------------------------------
# set_subscription_key()

## ----r_environ_demo_project, eval = FALSE-------------------------------------
# usethis::edit_r_environ("project")

## ----r_environ_demo_user, eval = FALSE----------------------------------------
# usethis::edit_r_environ("user")

## ----get_country--------------------------------------------------------------
# Fetch all countries
countries_df <- get_all_countries()

# Display the first few rows of the data frame
head(countries_df)

## ----get_operations-----------------------------------------------------------
# Fetch all operations
operations_df <- get_all_operations()

# Display the first few rows of the data frame
head(operations_df)

## ----get_idp_admin0-----------------------------------------------------------
# Fetch IDP data at Admin Level 0
idp_admin0_df <-
  get_idp_admin0_data(CountryName = "Ethiopia",
                      FromRoundNumber = 0,
                      ToRoundNumber = 10)

# Display the first few rows of the data frame
head(idp_admin0_df)

## ----get_idp_admin1-----------------------------------------------------------
# Fetch IDP data at Admin Level 1
idp_admin1_df <-
  get_idp_admin1_data(CountryName = "Sudan",
                      Admin1Name = "Blue Nile",
                      FromReportingDate = "2020-01-01",
                      ToReportingDate = "2024-08-15")

# Display the first few rows of the data frame
head(idp_admin1_df)

## ----get_idp_admin2-----------------------------------------------------------
# Fetch IDP data at Admin Level 2
idp_admin2_df <-
  get_idp_admin2_data(Operation = "Displacement due to conflict",
                      CountryName = "Lebanon")

# Display the first few rows of the data frame
head(idp_admin2_df)

