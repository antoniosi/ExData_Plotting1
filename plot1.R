power <- read.table("/Users/antoniosi/personal/Courses/Exploratory/Project1/household_power_consumption.txt", header = TRUE, sep=";", na.strings="?")
power$Time <- strptime(power$Time, format="%H:%M:%S")
power$Date <- as.Date(power$Date, format="%d/%m/%Y")
powerRange <- subset(power, power$Date >= as.Date("01/02/2007", "%d/%m/%Y") & power$Date <= as.Date("02/02/2007", "%d/%m/%Y"))

hist(powerRange$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png")
dev.off()
