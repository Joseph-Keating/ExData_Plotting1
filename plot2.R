#This code reads consumption data and produces the second png graph

setwd("C:/Users/Joseph Keating/Desktop/Coursera/datasciencecoursera/Exploratory_Data_Analysis/Project 1")

#fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
#download.file(fileUrl, destfile = "./Consumption.zip")
Consumption <- read.table("./household_power_consumption.txt",sep=";",header = TRUE,stringsAsFactors=FALSE)
Consumption2 <- Consumption[Consumption$Date=="1/2/2007"|Consumption$Date=="2/2/2007",]

Consumption2$DateTime <- strptime(paste(Consumption2$Date,Consumption2$Time),"%d/%m/%Y %H:%M:%S")
png("plot2.png",width=480,height=480)
plot(Consumption2$DateTime,Consumption2$Global_active_power,xlab="",ylab="Global Active Power(kilowatts)",type = "n")
lines(Consumption2$DateTime,Consumption2$Global_active_power)
dev.off()