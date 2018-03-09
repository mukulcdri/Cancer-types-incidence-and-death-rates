# loading the req libraries
library(readxl)
library(dplyr)
library(stringr)
library(ggplot2)
library(tidyr)
# reading the data IR
Cancer_Male_All <- read_excel("/Users/mac/Desktop/NSS/R/All_caner_ 1999-2014.xlsx", sheet = "All cancer male IR")
Cancer_Male_All$Gender <- "Male"
Cancer_Male_All$Cancer_Type <- "All"
Cancer_Male_Skin <- read_excel("/Users/mac/Desktop/NSS/R/All_caner_ 1999-2014.xlsx", sheet = "Skin male IR")
Cancer_Male_Skin$Gender <- "Male"
Cancer_Male_Skin$Cancer_Type <- "Skin"
Cancer_Male_Colon <- read_excel("/Users/mac/Desktop/NSS/R/All_caner_ 1999-2014.xlsx", sheet = "CRCmale IR")
Cancer_Male_Colon$Gender <- "Male"
Cancer_Male_Colon$Cancer_Type <- "Colon"
Cancer_Male_Lung <- read_excel("/Users/mac/Desktop/NSS/R/All_caner_ 1999-2014.xlsx", sheet = "Lung male IR")
Cancer_Male_Lung$Gender <- "Male"
Cancer_Male_Lung$Cancer_Type <- "Lung"
Cancer_Male_Prost <- read_excel("/Users/mac/Desktop/NSS/R/All_caner_ 1999-2014.xlsx", sheet = "Prostate male IR")
Cancer_Male_Prost$Gender <- "Male"
Cancer_Male_Prost$Cancer_Type <- "Prostate"
# Females IR
Cancer_Female_All <- read_excel("/Users/mac/Desktop/NSS/R/All_caner_ 1999-2014.xlsx", sheet = "All cancer female IR")
Cancer_Female_All$Gender <- "Female"
Cancer_Female_All$Cancer_Type <- "All"
Cancer_Female_Skin <- read_excel("/Users/mac/Desktop/NSS/R/All_caner_ 1999-2014.xlsx", sheet = "skin Female IR")
Cancer_Female_Skin$Gender <- "Female"
Cancer_Female_Skin$Cancer_Type <- "Skin"
Cancer_Female_Colon <- read_excel("/Users/mac/Desktop/NSS/R/All_caner_ 1999-2014.xlsx", sheet = "CRC females IR")
Cancer_Female_Colon$Gender <- "Female"
Cancer_Female_Colon$Cancer_Type <- "Colon"
Cancer_Female_Lung <- read_excel("/Users/mac/Desktop/NSS/R/All_caner_ 1999-2014.xlsx", sheet = "Lung female IR")
Cancer_Female_Lung$Gender <- "Female"
Cancer_Female_Lung$Cancer_Type <- "Lung"
Cancer_Female_Breast <- read_excel("/Users/mac/Desktop/NSS/R/All_caner_ 1999-2014.xlsx", sheet = "BC Females IR")
Cancer_Female_Breast$Gender <- "Female"
Cancer_Female_Breast$Cancer_Type <- "Breast"
Cancer_Female_Ovarian <- read_excel("/Users/mac/Desktop/NSS/R/All_caner_ 1999-2014.xlsx", sheet = "OV Female IR")
Cancer_Female_Ovarian$Gender <- "Female"
Cancer_Female_Ovarian$Cancer_Type <- "Ovarian"
Cancer_Female_Uterine <- read_excel("/Users/mac/Desktop/NSS/R/All_caner_ 1999-2014.xlsx", sheet = "UT Female IR")
Cancer_Female_Uterine$Gender <- "Female"
Cancer_Female_Uterine$Cancer_Type <- "Uterine"

# concatenating all IR datasets
Cancer_IR <- rbind(Cancer_Male_All,Cancer_Female_All, Cancer_Male_Colon,Cancer_Female_Colon,Cancer_Male_Lung,
            Cancer_Female_Lung,Cancer_Male_Skin, Cancer_Female_Skin, Cancer_Male_Prost,Cancer_Female_Breast,
            Cancer_Female_Ovarian,Cancer_Female_Uterine )
dim(Cancer_IR)
# saving data as rds
saveRDS(Cancer_IR, "/Users/mac/Desktop/NSS/R/Cancer_IR.rds")

#----------------------------------------------------------------------------------
# reading the data DR
Cancer_Male_All_DR <- read_excel("/Users/mac/Desktop/NSS/R/All_caner_ 1999-2014.xlsx", sheet = "All cancer male DR")
Cancer_Male_All_DR$Gender <- "Male"
Cancer_Male_All_DR$Cancer_Type <- "All"
Cancer_Male_Skin_DR <- read_excel("/Users/mac/Desktop/NSS/R/All_caner_ 1999-2014.xlsx", sheet = "skin male DR")
Cancer_Male_Skin_DR$Gender <- "Male"
Cancer_Male_Skin_DR$Cancer_Type <- "Skin"
Cancer_Male_Colon_DR <- read_excel("/Users/mac/Desktop/NSS/R/All_caner_ 1999-2014.xlsx", sheet = "CRC male DR")
Cancer_Male_Colon_DR$Gender <- "Male"
Cancer_Male_Colon_DR$Cancer_Type <- "Colon"
Cancer_Male_Lung_DR <- read_excel("/Users/mac/Desktop/NSS/R/All_caner_ 1999-2014.xlsx", sheet = "Lung male DR")
Cancer_Male_Lung_DR$Gender <- "Male"
Cancer_Male_Lung_DR$Cancer_Type <- "Lung"
Cancer_Male_Prost_DR <- read_excel("/Users/mac/Desktop/NSS/R/All_caner_ 1999-2014.xlsx", sheet = "Prostate male DR")
Cancer_Male_Prost_DR$Gender <- "Male"
Cancer_Male_Prost_DR$Cancer_Type <- "Prostate"
# Females IR
Cancer_Female_All_DR <- read_excel("/Users/mac/Desktop/NSS/R/All_caner_ 1999-2014.xlsx", sheet = "All  cancer female DR")
Cancer_Female_All_DR$Gender <- "Female"
Cancer_Female_All_DR$Cancer_Type <- "All"
View(Cancer_Female_All_DR)
Cancer_Female_Skin_DR <- read_excel("/Users/mac/Desktop/NSS/R/All_caner_ 1999-2014.xlsx", sheet = "skin female DR")
Cancer_Female_Skin_DR$Gender <- "Female"
Cancer_Female_Skin_DR$Cancer_Type <- "Skin"
View(Cancer_Female_Skin_DR)
Cancer_Female_Colon_DR <- read_excel("/Users/mac/Desktop/NSS/R/All_caner_ 1999-2014.xlsx", sheet = "CRC Females DR")
Cancer_Female_Colon_DR$Gender <- "Female"
Cancer_Female_Colon_DR$Cancer_Type <- "Colon"
View(Cancer_Female_Colon_DR)
Cancer_Female_Lung_DR <- read_excel("/Users/mac/Desktop/NSS/R/All_caner_ 1999-2014.xlsx", sheet = "Lung Female DR")
Cancer_Female_Lung_DR$Gender <- "Female"
Cancer_Female_Lung_DR$Cancer_Type <- "Lung"
View(Cancer_Female_Lung_DR)
Cancer_Female_Breast_DR <- read_excel("/Users/mac/Desktop/NSS/R/All_caner_ 1999-2014.xlsx", sheet = "BC Females DR")
Cancer_Female_Breast_DR$Gender <- "Female"
Cancer_Female_Breast_DR$Cancer_Type <- "Breast"
Cancer_Female_Ovarian_DR <- read_excel("/Users/mac/Desktop/NSS/R/All_caner_ 1999-2014.xlsx", sheet = "OV Female DR")
Cancer_Female_Ovarian_DR$Gender <- "Female"
Cancer_Female_Ovarian_DR$Cancer_Type <- "Ovarian"
Cancer_Female_Uterine_DR <- read_excel("/Users/mac/Desktop/NSS/R/All_caner_ 1999-2014.xlsx", sheet = "UT Female DR")
Cancer_Female_Uterine_DR$Gender <- "Female"
Cancer_Female_Uterine_DR$Cancer_Type <- "Uterine"

View(Cancer_Female_Uterine_DR)


# concatenating all IR datasets
Cancer_DR <- rbind(Cancer_Male_All_DR,Cancer_Female_All_DR, Cancer_Male_Colon_DR,Cancer_Female_Colon_DR,Cancer_Male_Lung_DR,
                   Cancer_Female_Lung_DR,Cancer_Male_Skin_DR, Cancer_Female_Skin_DR, Cancer_Male_Prost_DR,
                   Cancer_Female_Breast_DR, Cancer_Female_Ovarian_DR,Cancer_Female_Uterine_DR)
dim(Cancer_DR)
names(Cancer_IR)
# saving data as rds
saveRDS(Cancer_DR, "/Users/mac/Desktop/NSS/R/Cancer_DR.rds")

#---------------------------------------------------------------------------------
# tidying data making Race one column
Cancer_IR_L <- gather(Cancer_IR, Race, Incidence_rate, 2:7)
View(Cancer_IR_L)
Cancer_DR_L <- gather(Cancer_DR, Race, Death_rate, 2:7)
View(Cancer_DR_L)
# saving as R objects 
saveRDS(Cancer_IR_L , "/Users/mac/Desktop/NSS/R/Cancer_IR_L.rds")
saveRDS(Cancer_DR_L , "/Users/mac/Desktop/NSS/R/Cancer_DR_L.rds")
#------------------------------------------------------------------------
# using cbind function to get death_rate column in IR dataframe
Cancer_IR_DR_L <- cbind(Cancer_IR_L, Death_rate = Cancer_DR_L$Death_rate)
View(Cancer_IR_DR_L)
saveRDS(Cancer_IR_DR_L , "/Users/mac/Desktop/NSS/R/Cancer_IR_DR_L.rds")

# reading the data from rds file
Cancer_IR_DR_L <- readRDS("/Users/mac/Desktop/NSS/R/Cancer_IR_DR_L.rds")
View(Cancer_IR_DR_L)
# There is no na in Incidence_rate while we have 40 na in Death_rate
sum(is.na(Cancer_IR_DR_L$Death_rate))
# to subset data with na rows
new_DF <- subset(Cancer_IR_DR_L, is.na(Cancer_IR_DR_L$Death_rate))
View(new_DF)
View(Cancer_IR_DR_L)
# missing values are only for death_rate in skin cancer and uterine cancer
# where missine means no death
# converting it to 0
Cancer_IR_DR_L[is.na(Cancer_IR_DR_L)] <- 0
sum(is.na(Cancer_IR_DR_L$Death_rate))
# making Cancer_type as factor
Cancer_IR_DR_L$Cancer_Type <- as.factor(Cancer_IR_DR_L$Cancer_Type)
#Now we have cleaned data
names(Cancer_IR_DR_L)
# visual representation
library(plotly)
colondf <- Cancer_IR_DR_L %>% filter(Cancer_Type == "Colon")
View(colondf)
ggplot(colondf, aes(x = Year, y = Incidence_rate, color = Gender))+ 
geom_line() + 
facet_wrap(~ Race)
# reading data
Cancer_IR_DR_L <- readRDS("/Users/mac/Desktop/NSS/R/Cancer_IR_DR_L.rds")
View(Cancer_IR_DR_L )
by_year_cancer_type <- Cancer_IR_DR_L %>% group_by(Year, Cancer_Type) 
ggplot(by_year_cancer_type, aes(x = Year, y = Incidence_rate, color = Cancer_Type))+
  geom_line()+ facet_wrap(~ Gender)
  
# stacked bar
ggplot(by_year_cancer_type, aes(x = Cancer_Type ))+
  geom_bar(aes(fill = Year), position = position_stack())
  