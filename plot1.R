data <- "./data/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
power <- subset(data, Date=="1/2/2007"|Date=="2/2/2007")
gap <- as.numeric(power$Global_active_power)
png("plot1.png", width=480, height=480)
hist(gap, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()