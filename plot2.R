dataFile <- "./data/household_power_consumption.txt"
data <- read.table(dataFile,header =  T,sep = ";",dec = ",",stringsAsFactors = F)
subSetData <- subset(data,Date %in% c("1/2/2007","2/2/2007"))

datetime <- strptime(paste(subSetData$Date,subSetData$Time,sep = " "),"%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot2.png")

plot(datetime,globalActivePower,type = "l", xlab="", ylab = "Global Active Power (kilowatts)")

dev.off()