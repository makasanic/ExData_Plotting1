getwd()
#download and unzip data
if(!file.exists("data")) dir.create("data")
fileUrl <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
download.file(fileUrl,destfile = "./data/household_power_consumption.zip")
unzip('./data/household_power_consumption.zip', exdir = './data')
# read data int R
dataFile <- "./data/household_power_consumption.txt"
data <- read.table(dataFile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]                   

#str(subSetData)
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width =480,height = 480)
hist(globalActivePower,col = "red", main = "Global Active Power")
dev.off()

dataFile <- "./data/household_power_consumption.txt"
data <- read.table(dataFile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
#str(subSetData)
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot2.png", width = 480, height = 480)
plot(datetime, globalActivePower, type = "l", xlab = " ", ylab = "Global Active Power(kilowatts)")
dev.off()

dataFile <- "./data/household_power_consumption.txt"
data <- read.table(dataFile, header =  TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
subSetData <- data[data$Date %in% c("1/2/007","2/2/2007") ,]
#str(subSetData)
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep =" "), "%d.%m.%y  %H:%M:%S")
globalActivePower <- as.numeric(subSetData$Global_active_power)
subMetering1 <- as.numeric(subSetData$Sub_metering_1)
subMetering2 <- as.numeric(subSetData$Sub_metering_2)
subMetering3 <- as.numeric(subSetData$Sub_metering_3)
plot("plot3.png", width = 480, height = 480)
library(dplyr)
library(data.table)
dev.off
library(lubridate)
plot(datetime,subMetering1, type = "l", ylab = "Global Active Power(kilowatts)",xlab = "")
  

