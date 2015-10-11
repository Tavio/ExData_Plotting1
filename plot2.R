source('prepare_data.R')

output.file <- "plot2.png";
png(file = output.file);
with(power.consumption.DF, plot(DateTime, Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = ""))
dev.off();