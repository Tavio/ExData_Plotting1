header <- read.table('household_power_consumption.txt', nrows = 1, header = FALSE, sep =';', stringsAsFactors = FALSE)
power.consumption.DF <- read.table("household_power_consumption.txt", sep=";", header=FALSE, na.strings=c("?"), skip=66637, nrows=2880);
colnames(power.consumption.DF) <- unlist(header);
power.consumption.DF$DateTime <- strptime(paste0(power.consumption.DF$Date," ",power.consumption.DF$Time), format="%d/%m/%Y %H:%M:%S");