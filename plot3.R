source('prepare_data.R')

output.file <- "plot3.png";
png(file = output.file);
with(power.consumption.DF, plot(DateTime, Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = ""));
with(power.consumption.DF, lines(DateTime, Sub_metering_2, col="red"))
with(power.consumption.DF, lines(DateTime, Sub_metering_3, col="blue"))
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), lty=1)
dev.off();