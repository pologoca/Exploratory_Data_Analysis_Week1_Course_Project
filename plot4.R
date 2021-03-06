# With data object

# To select the dates 2007-02-01 and 2007-02-02 from data object
subdata <- subset(data,data$Date=='1/2/2007' | data$Date =='2/2/2007')

# To create all plots into one png devic
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
with(subdata, plot(Global_active_power~datetime,
                   type='l', xlab='', ylab='Global active power (KW)'))
with(subdata,plot(Voltage~datetime,
                  type='l', xlab='', ylab='Voltage'))
with(subdata, plot(Sub_metering_1~datetime,
                   type='l', xlab='', ylab='Global active power (kW)'))
with(subdata, lines(Sub_metering_2~datetime,col='red'))
with(subdata, lines(Sub_metering_3~datetime,col='blue'))
legend('topright', col=c('black', 'red', 'blue'), cex=0.65, lty=1, lwd=2, bty='n',
       legend=names(subdata[c(7,8,9)]))
with(subdata, plot(Global_reactive_power~datetime,
                   type='l', xlab='', ylab='Global reactive power (KW)'))

dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()
