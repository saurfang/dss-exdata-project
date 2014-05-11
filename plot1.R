#source("getData.R")

par(mfcol = c(1,1))

hist(getData()$Global_active_power,
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (killowatts)",
     ylim = c(0, 1.2e3))

dev.copy(png, "plot1.png", 480, 480)
dev.off()