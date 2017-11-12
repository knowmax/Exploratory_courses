png(file="./plot3.png",width=480,height = 480) 
plot(strptime(pwr$Timestamp, "%d/%m/%Y %H:%M:%S"), pwr$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")

lines(strptime(pwr$Timestamp, "%d/%m/%Y %H:%M:%S"), pwr$Sub_metering_2, type = "l", col = "red" )

lines(strptime(pwr$Timestamp, "%d/%m/%Y %H:%M:%S"), pwr$Sub_metering_3, type = "l", col = "blue" )

legend("topright", lty= 1, col = c("Black", "red", "blue"), legend = c( "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()