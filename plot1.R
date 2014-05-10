# Author: Fall-From-Grace
# Date: 10 May 2014
# Exploratory Data Analysis

#read and subset data
powerData <- read.csv("household_power_consumption.txt", sep=";", stringsAsFactors=FALSE)
powerDataFeb <- subset(powerData, powerData$Date == "1/2/2007" | powerData$Date == "2/2/2007")

#make the graph
png(filename = "plot1.png", height=480, width=480)
hist(as.numeric(powerDataFeb$Global_active_power), col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
