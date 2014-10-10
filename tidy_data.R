# set working directory 
setwd("~/Desktop/DataScienceGit/ExData_Plotting1")

# load packages
library(data.table)
library(lubridate)

# check to see if the tidy data set exists; if not, create it
if (!file.exists('~/Desktop/DataScienceGit/ExData_Plotting1/power_consumption_tidy.txt')) {
        
        # read the raw data and limit to 2 days
        variable.class<-c(rep('character',2),rep('numeric',7))
        power<-read.table('~/Desktop/DataScienceGit/ExData_Plotting1/household_power_consumption.txt',header=TRUE,
                                      sep=';',na.strings='?',colClasses=variable.class)
        power<-power[power$Date=='1/2/2007' | power$Date=='2/2/2007',]
        
        # clean up variable names and convert date/time fields
        cols<-c('Date','Time','GlobalActivePower','GlobalReactivePower','Voltage','GlobalIntensity',
                'SubMetering1','SubMetering2','SubMetering3')
        colnames(power)<-cols
        power$DateTime<-dmy(power$Date)+hms(power$Time)
        power<-power[,c(10,3:9)]
        
        # add tidy data set to the directory
        write.table(power,file='~/Desktop/DataScienceGit/ExData_Plotting1/power_consumption_tidy.txt',sep='|',row.names=FALSE)
} else {
        
        power<-read.table('~/Desktop/DataScienceGit/ExData_Plotting1/power_consumption_tidy.txt',header=TRUE,sep='|')
        power$DateTime<-as.POSIXlt(power$DateTime)
        
}