
### Install packages -----------------------------------------------------------
packages.list <- c("tidyverse", "data.table", "survival", "DT", "plotly",
                   "leaflet", "httr", "readxl", "scales", "openxlsx", "tidyr", 
                   "stringr", "mlogit", "mclogit", "acs", "sp", "rgdal",
                   "RSocrata", "tidycensus", "stats", "glue", "htmltools",
                   "bsplus", "RColorBrewer", "foreign", "R.utils")

for (p in packages.list) {
  if (!p %in% installed.packages()[, "Package"]) install.packages(p)
  library(p, character.only = TRUE)
}

meanNA <- function(...) mean(..., na.rm = TRUE)
 sumNA <- function(...)  sum(..., na.rm = TRUE)
 minNA <- function(...)  min(..., na.rm = TRUE)
 maxNA <- function(...)  max(..., na.rm = TRUE)

### Generate aliases for select functions --------------------------------------
cn <- function(x) colnames(x)

### Set visual branding standards ----------------------------------------------
chHex1 <- rgb(128,   0,   0, maxColorValue = 255)
chHex2 <- rgb( 33,  51, 104, maxColorValue = 255)
chHex3 <- rgb( 42,  92, 170, maxColorValue = 255)
chHex4 <- rgb(  0, 156, 222, maxColorValue = 255)
chHexs <- c(chHex1, chHex2, chHex3, chHex4)

myTheme <- 
  theme_minimal() +
  theme(legend.position = "none",
        plot.title  = element_text(size = 12, family = "Segoe UI", hjust = 0.5),
        axis.text   = element_text(size = 11, family = "Segoe UI"),
        axis.title  = element_text(size = 12, family = "Segoe UI"),
        legend.text = element_text(size = 10, family = "Segoe UI"),
        strip.text  = element_text(size = 13,  family = "Segoe UI", margin = margin()),
        legend.title = element_blank(),
        axis.title.x = element_blank())
