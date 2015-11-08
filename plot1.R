setwd("C:/Users/Joseph Keating/Desktop/Coursera/datasciencecoursera/Exploratory Data Analysis/Project 1")
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl, destfile = "./Consumption.zip")
Consumption <- read.table("./household_power_consumption.txt",sep=";",header = TRUE,stringsAsFactors=FALSE)
Consumption2 <- Consumption[Consumption$Date=="1/2/2007"|Consumption$Date=="2/2/2007",]
Consumption2$Global_active_power <- as.numeric(Consumption2$Global_active_power)
png("plot1.png",width=480,height=480)
hist(Consumption2$Global_active_power,col = "red",main = "Global Active Power",xlab = "Global Active Power(kilowatts)")
dev.off()

