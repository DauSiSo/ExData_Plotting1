##Exploratory Data / Project 1 / Plot 3
setwd("/home/emlam/DataScience/Coursera/4_ExploratoryDataAnalysis/Project1")

##Read only data from the dates 2007-02-01 and 2007-02-02
data <- read.table("./household_power_consumption.txt", sep=";", header=FALSE, skip=66637, nrows=2880)

##Convert the first column to a date object, by concat Column 1 (date) and Column 2 (time) together first
dateTimeInChar <- paste(as.character(data[,1]),as.character(data[,2]))
dateTime <- strptime(dateTimeInChar, "%d/%m/%Y %H:%M:%S")
data$V1 <- dateTime


##Column Names: 
##Date;Time;Global_active_power;Global_reactive_power;Voltage;Global_intensity;Sub_metering_1;Sub_metering_2;Sub_metering_3


##Plotting the diagram
png(filename="plot3.png", width=480, height=480)
with(data, plot(V1, V7, type="l", xlab="", ylab="Energy sub metering", col="Black"))
with(data, lines(V1, V8, col="Red"))
with(data, lines(V1, V9, col="Blue"))
legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()

