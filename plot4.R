#source("getData.R")

par(mfcol = c(2,2), mar = c(4,4,2,2))

plot(getData()$Date, getData()$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power (killowatts)")

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
       lwd = 1, bty = "n",
       cex=0.6, y.intersp = 0.7)

plot(getData()$Date, getData()$Voltage,
     type = "l",
     xlab = "datetime",
     ylab = "Voltage")

plot(getData()$Date, getData()$Global_active_power,
     type = "l",
     xlab = "datetime",
     ylab = "Global_active_power")

dev.copy(png, "plot4.png", 480, 480)
dev.off()