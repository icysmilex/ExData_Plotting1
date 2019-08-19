DatewTime<-paste(as.Date(cleandata$Date, "%d/%m/%Y"),cleandata$Time)
DatewTime <-as.POSIXct(DatewTime)
cleandata2<- cbind(cleandata,DatewTime)


plot( cleandata2$DatewTime,as.numeric(cleandata$Global_active_power),
      ylab = "Global Active Power (kilowatts)",
      xlab = "",
      type= "l"
)