attach Consumption2
Consumption2$DateTime <- strptime(paste(Date,Time),"%d/%m/%Y %H:%M:%S")
png("plot2.png",width=480,height=480)
plot(DateTime,Global_active_power,xlab="",ylab="Global Active Power(kilowatts)",type = "n")
lines(DateTime,Global_active_power)
dev.off()