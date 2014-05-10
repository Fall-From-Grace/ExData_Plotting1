# Author: Fall-From-Grace
# Date: 10 May 2014
# Exploratory Data Analysis

#read and subset data
powerData <- read.csv("household_power_consumption.txt", sep=";", stringsAsFactors=FALSE)
powerDataFeb <- subset(powerData, powerData$Date == "1/2/2007" | powerData$Date == "2/2/2007")

#make the graph
png(filename = "plot2.png", height=480, width=480)
plot(strptime(paste(powerDataFeb$Date, powerDataFeb$Time), "%d/%m/%Y %H:%M:%S"), as.numeric(powerDataFeb$Global_active_power), type="l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()
