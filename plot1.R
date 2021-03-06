# To set the working directory
setwd("~/DataScience/EDA/Week1/CourseProject")

# To read "household_power_consumtion.txt" file to "data" object
data <- read.table('household_power_consumption.txt',
                   sep=';', header=T, na.strings='?')

# To select the dates 2007-02-01 and 2007-02-02 from data object
subdata <- subset(data,data$Date=='1/2/2007' | data$Date =='2/2/2007')

# To create histogram from "Global_active_power" variable in an png file
with(subdata, hist(Global_active_power,
                   col='red', main='Global active power',
                   xlab='Global active power (kW)'))

dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
