source('prepare_data.R')

output.file <- "plot1.png";
png(file = output.file);
with(power.consumption.DF, hist(Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power"));
dev.off();