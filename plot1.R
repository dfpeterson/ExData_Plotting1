proj1graph <- read.table("household_power_consumption.txt", sep=";", skip=66637, nrows=2880, stringsAsFactors=FALSE)
names(proj1graph) <- read.table("household_power_consumption.txt", sep=";", nrows=1, stringsAsFactors=FALSE)
Date_Time <- as.POSIXlt(paste(proj1graph$Date, proj1graph$Time), format="%d/%m/%Y %H:%M:%S")
proj1graph <- cbind(proj1graph, Date_Time<-as.POSIXlt(paste(proj1graph$Date, proj1graph$Time), format="%d/%m/%Y %H:%M:%S"))
proj1graph$Date <- as.Date(proj1graph$Date)
png("plot1.png")
hist(proj1graph$Global_active_power, col="red", xlab="Global Active Power (killowats)", main="Global Active Power")
dev.off()
