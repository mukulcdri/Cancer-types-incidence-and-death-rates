# loading the req libraries
library(readxl)
library(dplyr)
library(stringr)
library(ggplot2)
library(tidyr)
# reading the data IR
Cancer_IR <- read_excel(file.choose(), sheet = 1)
names(Cancer_IR)
dim(Cancer_IR)
View(Cancer_IR)
# saving file as RDS
saveRDS(Cancer_IR, "Cancer_IR.rds")
# melt the data and bring all the races in one column and IR values
# in one column
Cancer_IR_L <- gather(Cancer_IR,Races, IR_rate, 4:9 )
head(Cancer_IR_L)
dim(Cancer_IR_L)
View(Cancer_IR_L)
# saving file as RDS
saveRDS(Cancer_IR_L, "Cancer_IR_L.rds")
# Import other data DR
Cancer_DR <- read_excel(file.choose(), sheet = 2)
names(Cancer_DR)
dim(Cancer_DR)
# saving file as RDS
saveRDS(Cancer_DR, "Cancer_DR.rds")
# melt the data and bring all the races in one column and IR values
# in one column
Cancer_DR_L <- gather(Cancer_DR,Races, DR_rate, 4:9 )
head(Cancer_DR_L)
dim(Cancer_DR_L)
View(Cancer_DR_L)
# saving file as RDS
saveRDS(CCancer_DR_L, "Cancer_DR_L.rds")
# check the dims of both the datasets
dim(Cancer_IR_L)
dim(Cancer_DR_L)
names(Cancer_IR_L)
# getting DR_rate colum in Cancer_IR_L dataset
Cancer_IR_DR_L <- cbind(Cancer_IR_L, Cancer_DR_L$DR_rate)
View(Cancer_IR_DR_L)
# changing the name of last column
names(Cancer_IR_DR_L)[6] <-"DR_rate"
names(Cancer_IR_DR_L)
View(Cancer_IR_DR_L)


