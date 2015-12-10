####################################################################
# @author:      Sagar Pathak
# @description: Plotting Assignment 1 for Exploratory Data Analysis
#               Johns Hopkins University, Coursera
# @email:       surfer.sagar@gmail.com
# @date:        2015/12/10
####################################################################

# Load data using loaddata script
source("loaddata.R")

# Format the data time
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

# Convert into numeric
globalActivePower <- as.numeric(subSetData$Global_active_power)

# Plot 2
with(subSetData, plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)"))

# Save the png with specific width & height
dev.copy(png, 'plot2.png', width = 480, height = 480)
dev.off()