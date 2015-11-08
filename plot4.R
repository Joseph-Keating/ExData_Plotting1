png("plot4.png",width=480,height=480)
par(mfrow = c(2, 2))
par(mar = c(4,4,2,2))
plot(DateTime,Global_active_power,xlab="",ylab="Global Active Power",type = "n")
lines(DateTime,Global_active_power)

plot(DateTime,Voltage,xlab="datetime",ylab="Voltage",type = "n")
lines(DateTime,Voltage)

plot(DateTime,Sub_metering_1,xlab="",ylab="Energy sub metering",type = "n")
lines(DateTime,Sub_metering_1)
lines(DateTime,Sub_metering_2,col="red")
lines(DateTime,Sub_metering_3,col="blue")
legend("topright", bty="n",cex=0.67,lty=c(1,1,1), col = c("black","red", "blue"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))

plot(DateTime,Global_reactive_power,xlab="datetime",ylab="Global_reactive_power",type = "n")
lines(DateTime,Global_reactive_power)
dev.off()