library(dplyr)
library(data.table)
fh <-fread("./Power_data/household_power_consumption.txt",na.strings = '?',stringsAsFactors= FALSE)
pwr <-filter(fh,Date=="2/2/2007"|Date=="1/2/2007")

pwr$Global_active_power <- as.numeric(as.character(pwr$Global_active_power))

pwr$Global_reactive_power <- as.numeric(as.character(pwr$Global_reactive_power))

pwr$Sub_metering_1 <- as.numeric(as.character(pwr$Sub_metering_1))
pwr$Sub_metering_2 <- as.numeric(as.character(pwr$Sub_metering_2))
pwr$Sub_metering_3 <- as.numeric(as.character(pwr$Sub_metering_3))

pwr$Voltage <- as.numeric(as.character(pwr$Voltage))

pwr$Timestamp <-paste(pwr$Date, pwr$Time)
