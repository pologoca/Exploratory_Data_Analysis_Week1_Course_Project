# With data object

# To select the dates 2007-02-01 and 2007-02-02 from data object
subdata <- subset(data,data$Date=='1/2/2007' | data$Date =='2/2/2007')

# To create the line plot from Sub_metering 1, 2 and 3 in an png file
with(subdata, plot(Sub_metering_1~datetime, type='l', xlab='', ylab='Global active power (kW)'))
with(subdata, lines(Sub_metering_2~datetime,col='red'))
with(subdata, lines(Sub_metering_3~datetime,col='blue'))
legend('topright', col=c('black', 'red', 'blue'), lty=1, lwd=2, legend=names(subdata[c(7,8,9)]))
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()
