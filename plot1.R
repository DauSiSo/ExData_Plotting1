##Exploratory Data / Project 1 / Plot 1
setwd("/home/emlam/DataScience/Coursera/4_ExploratoryDataAnalysis/Project1")
data <- read.table("./household_power_consumption.txt", sep=";", header=FALSE, skip=66637, nrows=2880)

dateTimeInChar <- paste(as.character(data[,1]),as.character(data[,2]))
dateTime <- strptime(dateTimeInChar, "%d/%m/%Y %H:%M:%S")
data$V1 <- dateTime


##Column Names: 
##Date;Time;Global_active_power;Global_reactive_power;Voltage;Global_intensity;Sub_metering_1;Sub_metering_2;Sub_metering_3


png(filename="plot1.png", width=480, height=480)
hist(data$V3, xlab="Global Active Power(kilowatts)", main="Global Active Power", col="Red")
dev.off()

