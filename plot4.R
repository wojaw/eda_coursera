png('plot4.png', width=480, height=480)
par(mfrow=c(2,2))

plot(data$Global_active_power, xlab=NA, ylab='Global Activde Power', type='l', axes=F)
box('plot')
plot2_days = c(which(data$Time == '00:00:00'),nrow(data))
axis(1, at=plot2_days, labels=c('Thu','Fri','Sat'))
axis(2)

plot(data$Voltage, axes=F, xlab='datetime', ylab='Voltage', type='l')
box('plot')
axis(1, at=plot2_days, labels=c('Thu','Fri','Sat'))
axis(2)

plot(data$Sub_metering_1, axes=F, xlab=NA, ylab='Energy sub metering', type='l')
lines(data$Sub_metering_2, col=2)
lines(data$Sub_metering_3, col=4)
box('plot')
axis(1, at=plot2_days, labels=c('Thu','Fri','Sat'))
axis(2)
legend('topright', lty=1, col=c(1,2,4), legend=paste0('Sub_metering', 1:3), bty='n', cex=0.75)

plot(data$Global_reactive_power, xlab='datetime', ylab='Global Rectivde Power', type='l', axes=F)
box('plot')
plot2_days = c(which(data$Time == '00:00:00'),nrow(data))
axis(1, at=plot2_days, labels=c('Thu','Fri','Sat'))
axis(2)

dev.off()
