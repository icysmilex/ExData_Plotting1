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
