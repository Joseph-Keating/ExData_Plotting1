#This code reads consumption data and produces the fourth png graph, combination of 4 graphs
setwd("C:/Users/Joseph Keating/Desktop/Coursera/datasciencecoursera/Exploratory_Data_Analysis/Project 1")

Consumption <- read.table("./household_power_consumption.txt",sep=";",header = TRUE,stringsAsFactors=FALSE)
Consumption2 <- Consumption[Consumption$Date=="1/2/2007"|Consumption$Date=="2/2/2007",]

Consumption2$DateTime <- strptime(paste(Consumption2$Date,Consumption2$Time),"%d/%m/%Y %H:%M:%S")
png("plot4.png",width=480,height=480)
par(mfrow = c(2, 2))
par(mar = c(4,4,2,2))
plot(Consumption2$DateTime,Consumption2$Global_active_power,xlab="",ylab="Global Active Power",type = "n")
lines(Consumption2$DateTime,Consumption2$Global_active_power)

plot(Consumption2$DateTime,Consumption2$Voltage,xlab="datetime",ylab="Voltage",type = "n")
lines(Consumption2$DateTime,Consumption2$Voltage)

plot(Consumption2$DateTime,Consumption2$Sub_metering_1,xlab="",ylab="Energy sub metering",type = "n")
lines(Consumption2$DateTime,Consumption2$Sub_metering_1)
lines(Consumption2$DateTime,Consumption2$Sub_metering_2,col="red")
lines(Consumption2$DateTime,Consumption2$Sub_metering_3,col="blue")
legend("topright", bty="n",cex=0.67,lty=c(1,1,1), col = c("black","red", "blue"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))

plot(Consumption2$DateTime,Consumption2$Global_reactive_power,xlab="datetime",ylab="Global_reactive_power",type = "n")
lines(Consumption2$DateTime,Consumption2$Global_reactive_power)
dev.off()