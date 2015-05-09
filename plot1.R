source('./get_data.R')

png(filename = "plot1.png",
    height = 480,
    width = 480,
    units = "px")
hist(plotting_data$Global_active_power,
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.off()

