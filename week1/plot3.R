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
subMetering1 <- as.numeric(subSetData$Sub_metering_1)
subMetering2 <- as.numeric(subSetData$Sub_metering_2)
subMetering3 <- as.numeric(subSetData$Sub_metering_3)

png(filename = "plot3.png", width = 480, height = 480,units = "px")
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")

# other submetering lines
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")

# adding legend into graph
legend("topright", col = c("black", "red", "blue"),c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lwd = 1)
dev.off()