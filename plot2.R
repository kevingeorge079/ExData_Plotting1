data <- "./data/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
power <- subset(data, Date=="1/2/2007"|Date=="2/2/2007")
gap <- as.numeric(power$Global_active_power)
datetime<-strptime(paste(power$Date,power$Time,sep=" "),"%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(datetime,gap,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()
