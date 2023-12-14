setwd("C:/Users/mumin/Documents/MATLAB")


##########################synthetic data computations############

###########y=read.csv2(file="y_syn_full.csv",header=F,sep=";")########

##############y=read.csv2(file="y_infrate_full.csv",header=F,sep=";")

y1=read.csv2(file="y_original_syn.csv",header=F,sep=";")
y2=read.csv2(file="y_classic_syn.csv",header=F,sep=";")
y3=read.csv2(file="y_new_syn.csv",header=F,sep=";")


#y=ts(y)
y1=ts(y1)
y2=ts(y2)
y3=ts(y3)



library(fpp)
library(tseries)
library(forecast)



Box.test(y1, lag=20, type="Ljung-Box")

adf.test(y1, alternative="stationary")

kpss.test(y1)

Box.test(y2, lag=20, type="Ljung-Box")

adf.test(y2, alternative="stationary")

kpss.test(y2)

Box.test(y3, lag=20, type="Ljung-Box")

adf.test(y3, alternative="stationary")

kpss.test(y3)




library(forecast)
Acf(y1, lag.max = NULL, type = c("correlation"),plot = TRUE)
Pacf(y1, lag.max = NULL, plot = TRUE)

Acf(y2, lag.max = NULL, type = c("correlation"),plot = TRUE)
Pacf(y2, lag.max = NULL, plot = TRUE)

Acf(y3, lag.max = NULL, type = c("correlation"),plot = TRUE)
Pacf(y3, lag.max = NULL, plot = TRUE)

fit2=auto.arima(y2)
fit3=auto.arima(y3)



f2=forecast(fit2,h=30)
f2=as.data.frame(f2)
dim(f2)
length(f2$fitted)

str(fit2)
f3=forecast(fit3,h=30)
f3=as.data.frame(f3)

MAE2=sum(abs(y1[462:491]-f2[,1]))/30;MAE2
MAE3=sum(abs(y1[462:491]-f3[,1]))/30;MAE3

plot(forecast(fit2,h=30))
plot(forecast(fit3,h=30))

MSE2=sum((y1[462:491]-f2[,1])^2)/30;MSE2

MSE3=sum((y1[462:491]-f3[,1])^2)/30;MSE3


MAPE2=sum(abs(y1[462:491]-f2[,1])/abs(y1[462:491]))*100/30;MAPE2

MAPE3=sum(abs(y1[462:491]-f3[,1])/abs(y1[462:491]))*100/30;MAPE3

##0.147371
##0.377226