# Author: Fall-From-Grace
# Date: 10 May 2014
# Exploratory Data Analysis

#read and subset data
powerData <- read.csv("household_power_consumption.txt", sep=";", stringsAsFactors=FALSE)
powerDataFeb <- subset(powerData, powerData$Date == "1/2/2007" | powerData$Date == "2/2/2007")

#make the graphs
png(filename = "plot4.png", height=480, width=480)
par(mfrow=c(2,2))

#Top left
plot(strptime(paste(powerDataFeb$Date, powerDataFeb$Time), "%d/%m/%Y %H:%M:%S"), as.numeric(powerDataFeb$Global_active_power), type="l", ylab = "Global Active Power", xlab = "")

#Top right
plot(strptime(paste(powerDataFeb$Date, powerDataFeb$Time), "%d/%m/%Y %H:%M:%S"), as.numeric(powerDataFeb$Voltage), type="l", ylab = "Voltage", xlab = "datetime")

#Bottom left
plot(strptime(paste(powerDataFeb$Date, powerDataFeb$Time), "%d/%m/%Y %H:%M:%S"), as.numeric(powerDataFeb$Sub_metering_1), type="l", ylab = "Energy sub metering", xlab = "")
lines(strptime(paste(powerDataFeb$Date, powerDataFeb$Time), "%d/%m/%Y %H:%M:%S"), as.numeric(powerDataFeb$Sub_metering_2), type="l", col = "red")
lines(strptime(paste(powerDataFeb$Date, powerDataFeb$Time), "%d/%m/%Y %H:%M:%S"), as.numeric(powerDataFeb$Sub_metering_3), type="l", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), lwd = c(2.5, 2.5, 2.5), col = c("black", "red", "blue"), bty="n")

#Bottom right
plot(strptime(paste(powerDataFeb$Date, powerDataFeb$Time), "%d/%m/%Y %H:%M:%S"), as.numeric(powerDataFeb$Global_reactive_power), type="l", ylab = "Global_reactive_power", xlab = "datetime")


dev.off()
