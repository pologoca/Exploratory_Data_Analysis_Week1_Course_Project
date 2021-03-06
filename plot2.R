# With data object

# To select the dates 2007-02-01 and 2007-02-02 from data object
subdata <- subset(data,data$Date=='1/2/2007' | data$Date =='2/2/2007')

#To transform "Date" and "Time" vars from characters to Date and POSIXlt types
date.var <- as.Date(subdata$Date, format='%d/%m/%Y')
datetime <- paste(date.var, subdata$Time)
subdata$datetime <- as.POSIXct(datetime)

# To obtain the line plot in an png file
with(subdata, plot(Global_active_power~datetime,
                   type='l', xlab='', ylab='Global Active Power (KW)'))

dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
