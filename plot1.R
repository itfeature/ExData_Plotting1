setwd("D:/data")

data_full <- read.table("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
head(data_full)

# Extracting Required data
data1 <- subset(data_full, Date %in% c("1/2/2007","2/2/2007"))
# data format setting
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")

# Histogram
hist(data1$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

# saving plot file to png

# Plot width and height with file format
dev.copy(png, file = "plot1.png")

dev.off()
