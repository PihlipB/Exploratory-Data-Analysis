Data<-read.table("~/DataScience/household_power_consumption.txt",header=TRUE,sep=";")

twodays<-Data[Data$Date=="1/2/2007"|Data$Date=="2/2/2007",]

plotData<-twodays[,"Global_active_power"] 
plotData2<-as.numeric(as.character(plotData))
Graph1<-plot(plotData2,type="o",xlab="",ylab="Global Active Power (kilowatts)",pch=".",xaxt='n')
axis(1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))

