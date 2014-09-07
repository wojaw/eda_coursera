png('plot1.png', width=480, height=480)
hist(data$Global_active_power, col='red',
     main='Global Activde Power', xlab='Global Activde Power (kilowatts)',
     xlim=c(0,7.5), breaks=seq(0,7.5,0.5))
dev.off()