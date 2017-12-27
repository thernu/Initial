rm(list=ls()) 
library(zoo)
library(tseries)

#import data from csv file

data <- read.csv("C:/Users/THernu/Desktop/EURBRL.csv", header=T, dec=",", sep=";")

#convert data in a time series

datatimeseries <- zoo(data[,2], as.Date(data[,1], format = "%d/%m/%Y"))

#plot historical time series

plot(datatimeseries, type="l", lwd=2, col="red", xlab="Time", ylab="Closing Values",
     main="EUR/BRL", ylim=c(0,6) )

#graph historical returns of times series

hist(diff(log(datatimeseries[,2])), prob=T, ylim=c(0,1), xlim=c(-0.2, 0.2), col="red") 


plot(data2,type="l")
tui.1 <- filter(data2,filter=rep(1/5,5))
tui.2 <- filter(data2,filter=rep(1/25,25))
tui.3 <- filter(data2,filter=rep(1/81,81))
lines(tui.1,col="red")
lines(tui.2,col="purple")
lines(tui.3,col="blue")


acf(diff(log(data2)))

data2 <- read.csv("C:/Users/THernu/Desktop/EURBRL.csv",header=T,dec=",",sep=";")
data2 <- ts(data2[,2],start=1,freq=5) 
plot(stl(log(data2),s.window="periodic"))



