Data<-read.table("~/DataScience/household_power_consumption.txt",header=TRUE,sep=";")

twodays<-Data[Data$Date=="1/2/2007"|Data$Date=="2/2/2007",]

Sub1<-twodays[,"Sub_metering_1"] 
Sub2<-twodays[,"Sub_metering_2"]
Sub3<-twodays[,"Sub_metering_3"] 
plotData2<-as.numeric(as.character(plotData))
plot1<-as.numeric(as.character(Sub1))
plot2<-as.numeric(as.character(Sub2))
plot3<-as.numeric(as.character(Sub3))

Graph3<-plot(plot1,type="o",xlab="",ylab="Energy sub metering",pch=".",xaxt='n')
axis(1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))
lines(plot2,type="o",pch=".",col="red")
lines(plot3,type="o",pch=".",col="blue")
legend(1900,40,c("sub_metering_1","sub_metering_2","sub_metering_3"),cex=.8,col=c("black","red","blue"),pch=".",lty=1)

