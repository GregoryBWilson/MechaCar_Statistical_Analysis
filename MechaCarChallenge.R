# Linear Regression to Predict MPG
# Use the library() function to load the dplyr package.
library(dplyr)

# library(jsonlite)
# library(tidyverse)

getwd()
setwd("C:/Users/Greg/Carleton/MechaCar_Statistical_Analysis")

# Import and read in the MechaCar_mpg.csv file as a dataframe.
MechCar_MPG <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F) #read in the dataset
head(MechCar_MPG)

# Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns),
# and add the dataframe you created in Step 4 as the data parameter.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechCar_MPG) #generate multiple linear regression model

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechCar_MPG)) # summarize multiple linear model)

# Summary Statistics on Suspension Coils
# In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.
coil_table <- read.csv('Suspension_Coil.csv',stringsAsFactors = F) #read in the dataset
head(coil_table)

# Write an RScript that creates a total_summary dataframe using the summarize() function
# to get the mean, median, variance, and standard deviation of the suspension coil's PSI column.
summarize_coil_pop <- coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table

#Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the
# mean, median, variance, and standard deviation of the suspension coil's PSI column.
summarize_coil_lot <- coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table

# T-Tests on Suspension Coils

coil_pop_PSI <- coil_table%>% select( c('PSI'))

# In your MechaCarChallenge.RScript, write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the
# population mean of 1,500 pounds per square inch.
t.test(coil_pop_PSI,coil_pop_PSI$Mean) #compare sample versus population means


# Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is
# statistically different from the population mean of 1,500 pounds per square inch.

coil_lot1 <- coil_table %>% filter(Manufacturing_Lot=="Lot1") #select only data points where the Manufacturing_Lot is lot1
coil_lot1_PSI <- coil_lot1%>% select( c('PSI'))
t.test(coil_lot1_PSI,coil_pop_PSI$Mean) #compare sample versus population means

coil_lot2 <- coil_table %>% filter(Manufacturing_Lot=="Lot2") #select only data points where the Manufacturing_Lot is lot2
coil_lot2_PSI <- coil_lot2%>% select( c('PSI'))
t.test(coil_lot2_PSI,coil_pop_PSI$Mean) #compare sample versus population means

coil_lot3 <- coil_table %>% filter(Manufacturing_Lot=="Lot3") #select only data points where the Manufacturing_Lot is lot3
coil_lot3_PSI <- coil_lot3%>% select( c('PSI'))
t.test(coil_lot3_PSI,coil_pop_PSI$Mean) #compare sample versus population means

