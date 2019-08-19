
par(mfrow=c(2,2))



plot( cleandata2$DatewTime,as.numeric(cleandata$Global_active_power),
      ylab = "Global Active Power (kilowatts)",
      xlab = "",
      type= "l"
)

plot(cleandata2$DatewTime,cleandata2$Voltage,
     type = "l",
     xlab =  "datetime",
     ylab = "Voltage")


with(cleandata2,plot(DatewTime, Sub_metering_1,
                     type = "l",
                     ylab = "Energy Sub Metering",
                     xlab = ""
))
lines(cleandata2$DatewTime, cleandata2$Sub_metering_2,
      type = "l",
      col = "red")
lines(cleandata2$DatewTime, cleandata2$Sub_metering_3,
      type = "l",
      col = "blue")
legend("topright", lty=1, lwd =3, col=c("black","red","blue") ,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))



plot(cleandata2$DatewTime,cleandata2$Global_reactive_power,
     type = "l",
     xlab =  "datetime",
     ylab = "Global_reactive_power")
