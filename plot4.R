source('prepare_data.R')

output.file <- "plot4.png"
png(file = output.file)
par(mfrow = c(2, 2))
with(power.consumption.DF, plot(DateTime, Global_active_power, type = "l", ylab = "Global Active Power", xlab = ""))
with(power.consumption.DF, plot(DateTime, Voltage, type = "l", ylab = "Voltage", xlab = "datetime"))
with(power.consumption.DF, plot(DateTime, Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = ""));
with(power.consumption.DF, lines(DateTime, Sub_metering_2, col="red"))
with(power.consumption.DF, lines(DateTime, Sub_metering_3, col="blue"))
with(power.consumption.DF, plot(DateTime, Global_reactive_power, type = "l", xlab = "datetime"))
dev.off()