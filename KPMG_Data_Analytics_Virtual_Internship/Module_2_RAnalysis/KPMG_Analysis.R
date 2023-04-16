## Install

install.packages(c("tidyverse","patchwork","lubridate"))
install.packages("GGally")


## Load package

library(tidyverse)
library(patchwork)
library(lubridate)
library("GGally")
library(readxl)
library(ggplot2)
library(dplyr)


## Read file
Tran <- read_excel("KPMG_VI_New_raw_data_update_final.xlsx", "Transactions")
cus_demo <- read_excel("KPMG_VI_New_raw_data_update_final.xlsx", "CustomerDemographic")
cus_add <- read_excel("KPMG_VI_New_raw_data_update_final.xlsx", "CustomerAddress")
cus_new <- read_excel("KPMG_VI_New_raw_data_update_final.xlsx", "NewCustomerList")

## Check NA
colSums(is.na(Tran))
colSums(is.na(cus_add))
colSums(is.na(cus_demo))
colSums(is.na(cus_new))
glimpse(Tran)
glimpse(cus_add)
glimpse(cus_demo)
glimpse(cus_new)

## Change to date format
Tran$transaction_date <- as.Date(Tran$transaction_date)
cus_new$DOB <- as.Date(cus_new$DOB)
cus_demo$DOB <- as.Date(cus_demo$DOB)

## Change to factor
a <- c("order_status",
       "brand",
       "product_line",
       "product_class",
       "product_size")
for (b in a) {
  Tran[[b]] <- factor(Tran[[b]])
}


y <- c("gender",
       "job_title",
       "job_industry_category",
       "wealth_segment",
       "deceased_indicator",
       "owns_car")
for (i in y) {
  cus_demo[[i]] <- factor(cus_demo[[i]])
}


r <- c("gender",
       "job_title",
       "job_industry_category",
       "wealth_segment",
       "deceased_indicator",
       "owns_car",
       "postcode",
       "state",
       "country")
for (t in r) {
  cus_new[[t]] <- factor(cus_new[[t]])
}

cus_new$past_3_years_bike_related_purchases <- as.numeric(cus_new$past_3_years_bike_related_purchases)
cus_new$property_valuation <- as.numeric(cus_new$property_valuation)

u <- c("postcode",
       "state",
       "country")
for (o in u) {
  cus_add[[o]] <- factor(cus_add[[o]])
}

## Combine table Tran, cus_add, cus_demo
two_table <- left_join(Tran,cus_demo,by="customer_id",all.x=T)
glimpse(two_table)

three_table <- left_join(two_table,cus_add,by="customer_id",all.x=T) 
glimpse(three_table)


## Evaluate model
Li_model <- lm(past_3_years_bike_related_purchases ~ property_valuation + tenure, three_table)

## Plot chart

ggplot(three_table, aes(property_valuation,
                        past_3_years_bike_related_purchases)) +
  geom_smooth()+
  labs(x= "Property Valuation",
       y= "Bike purchasses in 3 years")

ggplot(three_table, aes(tenure,
                        past_3_years_bike_related_purchases)) +
  geom_smooth()+
  labs(x= "Tenure",
       y= "Bike purchasses in 3 years")


## Export
write.csv(three_table,"Sprocket_Central.csv")
