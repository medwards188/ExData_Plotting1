# set working directory 
setwd("~/Desktop/DataScienceGit/ExData_Plotting1")

# load tidy data set
source('~/Desktop/DataScienceGit/ExData_Plotting1/tidy_data.R')

# open device
png(filename='~/Desktop/DataScienceGit/ExData_Plotting1/plot2.png',width=480,height=480,units='px')

# plot data
plot(power$DateTime,power$GlobalActivePower,ylab='Global Active Power (kilowatts)', xlab='', type='l')

# close device
dev.off()