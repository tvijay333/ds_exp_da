# laod data 
headers <- names(read.csv(file="household_power_consumption.txt",sep=";",nrows=1))
Data_org <- read.csv(file="household_power_consumption.txt",header = TRUE,sep=";",skip=66637,nrows=2880,col.names =headers)
Data_org$Date <- as.Date(Data_org$Date,format="%Y/%m/%d")
hist(Data_org$Global_active_power,col = "red",main="Global Active power",xlab="Global Active power (Kilowatts)")
dev.copy(png,'Plot1.png')
dev.off()