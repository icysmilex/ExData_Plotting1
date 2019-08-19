library(dplyr)
library(ggplot2)
file<-'C:\\Users\\Sing_pei\\Downloads\\exdata_data_household_power_consumption\\household_power_consumption.txt'
dataset <- read.csv(file,sep=";", stringsAsFactors=FALSE, header= TRUE)
str(dataset)

cleandata<-dataset[dataset$Date %in% c("1/2/2007","2/2/2007"),]

hist(as.numeric(cleandata$Global_active_power),
     col="red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     ylim= c(0,1200)
)