source('./get_data.R')

png(filename = "plot2.png",
    height = 480,
    width = 480,
    units = "px")
with(plotting_data,
     plot(DateTime, Global_active_power,
          type = "l",
          ylab = "Global Active Power (kilowatts)",
          xlab = ""))
dev.off()

