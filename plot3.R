dataFile <- "./data/household_power_consumption.txt"
data <- read.table(dataFile,header =  T,sep = ";",dec = ",",stringsAsFactors = F)
subSetData <- subset(data,Date %in% c("1/2/2007","2/2/2007"))

datetime <- strptime(paste(subSetData$Date,subSetData$Time,sep = " "),"%d/%m/%Y %H:%M:%S")
subMetering1 <- as.numeric(subSetData$Sub_metering_1)
subMetering2 <- as.numeric(subSetData$Sub_metering_2)
subMetering3 <- as.numeric(subSetData$Sub_metering_3)
png("plot3.png")

plot(datetime,subMetering1,type = "l", xlab="", ylab = "Energy Submetering")
lines(datetime,subMetering2, type = "l", col = "red")
lines(datetime,subMetering3, type = "l", col = "blue")

legend("topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lty = 1,lwd = 2)

dev.off()