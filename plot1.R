# set working directory 
setwd("~/Desktop/DataScienceGit/ExData_Plotting1")

# load tidy data set
source('~/Desktop/DataScienceGit/ExData_Plotting1/tidy_data.R')

# open device
png(filename='~/Desktop/DataScienceGit/ExData_Plotting1/plot1.png',width=480,height=480,units='px')

# plot data
hist(power$GlobalActivePower,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')

# turn off device
dev.off()