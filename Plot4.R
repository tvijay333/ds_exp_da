
par(mfrow=c(2,2))
headers <- names(read.csv(file="household_power_consumption.txt",sep=";",nrows=1))
Data_org <- read.csv(file="household_power_consumption.txt",header = TRUE,sep=";",skip=66637,nrows=2880,col.names =headers)
Data_org$Date <- as.Date(Data_org$Date,format="%Y/%m/%d")

plot(Data_org$Global_active_power,type='l',ylab="active power",axes=FALSE,ann=FALSE)
axis(1, at=c(1,1440,2880), lab=c("Thu", "Fri", "Sat"))
axis(2)
box()
title(ylab = "Global Active power (Kilowatts)")

plot(Data_org$Voltage,type='l',ylab="active power",axes=FALSE,ann=FALSE)
axis(1, at=c(1,1440,2880), lab=c("Thu", "Fri", "Sat"))
axis(2)
box()
title(xlab="Datetime",ylab = "Voltage")


with(Data_org,plot(Sub_metering_1,type='l',col="black",axes=FALSE,ann=FALSE))
with(Data_org,lines(Sub_metering_2,type='l',col="red"))
with(Data_org,lines(Sub_metering_3,type='l',col="blue"))
axis(1, at=c(1,1440,2880), lab=c("Thu", "Fri", "Sat"))
axis(2)
box()
title(ylab="Energy sub metering")

plot(Data_org$Global_reactive_power,type='l',ylab="active power",axes=FALSE,ann=FALSE)
axis(1, at=c(1,1440,2880), lab=c("Thu", "Fri", "Sat"))
axis(2)
box()
title(xlab="Datetime",ylab = "Global_Reactive_Power")
dev.copy(png,'Plot4.png')
dev.off()