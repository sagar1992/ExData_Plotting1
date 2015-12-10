####################################################################
# @author:      Sagar Pathak
# @description: Plotting Assignment 1 for Exploratory Data Analysis
#               Johns Hopkins University, Coursera
# @email:       surfer.sagar@gmail.com
# @date:        2015/12/10
####################################################################

# Define the data source file path
dataSourceFile <- "../data/household_power_consumption.txt"

# Load the power consumption data
data <- read.table(dataSourceFile, header = TRUE, sep = ";", na.strings = "?")

# Display the data object, 2075259 obs. of  9 variables
str(data) 

# Filter data as subSetData (2007-02-01 and 2007-02-02)
subSetData <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]

# Remove the data object since we're only using subSetData
rm(data)
