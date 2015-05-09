source('./get_data.R')

png(filename = "plot4.png",
    height = 480,
    width = 480,
    units = "px")

par(mfcol = c(2, 2))

with(plotting_data, {
        plot(DateTime, Global_active_power,
             type = "l",
             ylab = "Global Active Power",
             xlab = "")
             
        plot(DateTime, Sub_metering_1,
             type = "l",
             ylab = "Energy sub metering",
             xlab = "")
        lines(DateTime, Sub_metering_2,
              col = "red")
        lines(DateTime, Sub_metering_3,
              col = "blue")
        legend("topright",
               legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
               col = c("black", "red", "blue"),
               lty = 1)
        
        plot(DateTime, Voltage,
             type = "l",
             ylab = "Voltage")
        
        plot(DateTime, Global_reactive_power,
             type = "l")
})
dev.off()

