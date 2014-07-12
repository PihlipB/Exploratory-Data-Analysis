Data<-read.table("~/DataScience/household_power_consumption.txt",header=TRUE,sep=";")

twodays<-Data[Data$Date=="1/2/2007"|Data$Date=="2/2/2007",]

plotData<-twodays[,"Global_active_power"] 
plotData2<-as.numeric(as.character(plotData))
hist(plotData2,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)",ylim=c(0,1200))