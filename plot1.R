powerData <- read.csv("household_power_consumption.txt", sep=";", stringsAsFactors=FALSE)
powerDataFeb <- subset(powerData, powerData$Date == "1/2/2007" | powerData$Date == "2/2/2007")

png(filename = "plot1.png", height=480, width=480)
hist(as.numeric(powerDataFeb$Global_active_power), col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
