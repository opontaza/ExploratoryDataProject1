dataFile <- "./data/household_power_consumption.txt"
data <- read.table(dataFile,header =  T,sep = ";",dec = ",",stringsAsFactors = F)
subSetData <- subset(data,Date %in% c("1/2/2007","2/2/2007"))
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png")

hist(globalActivePower, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")
dev.off()