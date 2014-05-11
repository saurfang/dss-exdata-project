#source("getData.R")

par(mfcol = c(1,1))

plot(getData()$Date, getData()$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power (killowatts)")

dev.copy(png, "plot2.png", 480, 480)
dev.off()