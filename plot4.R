png(file="./plot4.png",width=480,height = 480) 
par(mfcol = c(2,2))
plot(strptime(pwr$Timestamp, "%d/%m/%Y %H:%M:%S"), pwr$Global_active_power, type = "l", 
     xlab = "", ylab = "Global Active Power(kilowatts)")
plot(strptime(pwr$Timestamp, "%d/%m/%Y %H:%M:%S"), pwr$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(strptime(pwr$Timestamp, "%d/%m/%Y %H:%M:%S"), pwr$Sub_metering_2, type = "l", col = "red" )
lines(strptime(pwr$Timestamp, "%d/%m/%Y %H:%M:%S"), pwr$Sub_metering_3, type = "l", col = "blue" )
legend("topright", lty= 1, col = c("Black", "red", "blue"), legend = c( "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(strptime(pwr$Timestamp, "%d/%m/%Y %H:%M:%S"), pwr$Voltage, type = "l", 
     xlab = "datetime", ylab = "Voltage")
plot(strptime(pwr$Timestamp, "%d/%m/%Y %H:%M:%S"), pwr$Global_reactive_power, type = "l", 
     xlab = "datetime", ylab = "Global_reactive_power")
dev.off()