library(shiny)
library(ggplot2)
library(dplyr)
library(shinythemes)
library(plotly)
library(hexbin)
Cancer_IR_DR_L <- readRDS("data/Cancer_IR_DR_L.rds")
css <- "
.shiny-output-error { visibility: hidden; }
.shiny-output-error:before {
visibility: visible;
content:'Sorry!!! We do not have data for Type of Cancer and Sex selected in this app.';}

}
"
# content: 'Data doesn't exist for this cancer and gender selected in this app.'; }
