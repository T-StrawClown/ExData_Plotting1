if(!exists("raw_data") || !sum(dim(raw_data)==c(2075259,9))==2)
        {
        if(!file.exists("household_power_consumption.txt"))
                {
                if(!file.exists("exdata-data-household_power_consumption.zip"))
                        {
                        download.file(url="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                                      destfile="exdata-data-household_power_consumption.zip",
                                      mode="wb")
                        }
                unzip(zipfile="exdata-data-household_power_consumption.zip",
                      files="household_power_consumption.txt")
                }

        raw_data <- read.csv(file="household_power_consumption.txt",
                             sep=";",
                             na.strings="?",
                             stringsAsFactors=F)
        }

data <- subset(raw_data, Date %in% c("2/2/2007", "1/2/2007"))
plotting_data <- within(data,
                                {
                                DateTime <- strptime(paste(Date, " ", Time), "%d/%m/%Y %H:%M:%S")
                                Date <- as.Date(Date, "%d/%m/%Y")
                                })
