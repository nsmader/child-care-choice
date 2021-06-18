# child-care-choice

Public repo for calibrating and testing child care choice methods

# Setup

Each contributor should create a file named `profile-settings.R` saved in the main folder, which has private, individual-specific information. This should minimally have the lines:
    data_path <- "a/local/path/" # this is for saving files not appropriate for storing in the repo. This should end with a final "/".
	census_key <- "" # this is the contributor's own Census API key which can be applied for [here](https://api.census.gov/data/key_signup.html)

# Data Sources

## Travel Times

Travel times are drawn from work by staff of the University of Chicago Center for Spatial Data Science, who have precomputed travel times that, among others, include tract-to-tract driving times between pairs of tracts within 60 km of our chosen geographic focus of Houston, TX. See [this page](https://access.readthedocs.io/en/latest/resources.html) for documentation and direct links.

Citation: Saxon, James, Julia Koschinsky, Karina Acosta, Vidal Anguiano, Luc Anselin, and Sergio Rey. (2020). An Open Software Environment to Make Spatial Access Metrics More Accessible. University of Chicago: Center for Spatial Data Science. Preprint doi:10.13140/RG.2.2.12396.28807

## Shape Files

The shapefile of all Texas Census tracts--tl_2020_48_tract.zip--was downloaded from the [Census TIGER/Line Shapefiles webpage](https://www.census.gov/geographies/mapping-files/time-series/geo/tiger-line-file.html). Note that the FIPS code for Harris County--the seat of Houston--is 48201, for use in extracting just relevant tracts from the larger shapefile.

## Provider Data
Provider data downloaded from Texas Department of Health and Humand Services child care search website on June 16, 2021. Geocoding used open street maps with geocoder Python package.
