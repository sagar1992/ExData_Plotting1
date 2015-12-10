####################################################################
# @author:      Sagar Pathak
# @description: Plotting Assignment 1 for Exploratory Data Analysis
#               Johns Hopkins University, Coursera
# @email:       surfer.sagar@gmail.com
# @date:        2015/12/10
####################################################################

# Load data using loaddata script
source("loaddata.R")

with(subSetData, hist(globalActivePower, col = "red", main = "Global Active Power", xlab = "Global Active Power(kilowatts)"))
dev.copy(png, 'plot1.png', width = 480, height = 480)
dev.off()