# set working directory 
setwd("~/Desktop/DataScienceGit/ExData_Plotting1")

# load tidy data set
source('~/Desktop/DataScienceGit/ExData_Plotting1/tidy_data.R')

# open device
png(filename='~/Desktop/DataScienceGit/ExData_Plotting1/plot3.png',width=480,height=480,units='px')

# plot data
lncol<-c('black','red','blue')
lbls<-c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
plot(power$DateTime,power$SubMetering1,type='l',col=lncol[1],xlab='',ylab='Energy sub metering')
lines(power$DateTime,power$SubMetering2,col=lncol[2])
lines(power$DateTime,power$SubMetering3,col=lncol[3])

# add legend
legend('topright',legend=lbls,col=lncol,lty='solid')

# close device
dev.off()