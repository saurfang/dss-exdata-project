#source("getData.R")

par(mfcol = c(1,1))

plot(getData()$Date, getData()$Sub_metering_1,
     type = "l",
     xlab = "",
     ylab = "Energy sub metering")
lines(getData()$Date, getData()$Sub_metering_2,
      col = "red")
lines(getData()$Date, getData()$Sub_metering_3,
      col  = "blue")
legend("topright", c("Sub_metering_1",
                     "Sub_metering_2",
                     "Sub_metering_3"),
       col = c("black","red","blue"),
       lwd = 1, 
       cex=0.7, y.intersp = 0.7)

dev.copy(png, "plot3.png", 480, 480)
dev.off()