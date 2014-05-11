library(memoise)

dataURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

getData <- memoise(function(path=basename(dataURL)){
  if(!file.exists(path)){
    download.file(dataURL, path, method = "curl")
  }
  
  df <- 
    read.table(unz(path, "household_power_consumption.txt"), header = TRUE, 
               sep = ";", colClasses = "character", stringsAsFactors = FALSE)
  df <- df[grep("^[12]/2/2007$", df$Date),]
  transform(df,
            Date = strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S"),
            Global_active_power = as.numeric(Global_active_power),
            Global_reactive_power = as.numeric(Global_reactive_power),
            Voltage = as.numeric(Voltage),
            Global_intensity = as.numeric(Global_intensity),
            Sub_metering_1 = as.numeric(Sub_metering_1),
            Sub_metering_2 = as.numeric(Sub_metering_2),
            Sub_metering_3 = as.numeric(Sub_metering_3))
})
