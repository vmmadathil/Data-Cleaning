'''
Developed for Forust.io

A very general script to preprocess data before common Machine Learning procedures.
This script imports data from an excel file, replaces missing values with "0", drops unneeded columns, and provides normalization functions.


Author: Visakh Madathil
'''

#importing Excel File
library(readxl)
mydata <- read_excel("file path")
View(mydata)

#replacing N/A values with 0
mydata[is.na(mydata)] <- 0 

#Dropping unneeded columns (if needed)
mydata$`Col Name` <- NULL
mydata$`Col Name` <- NULL
mydata$`Col Name` <- NULL
mydata$`Col Name` <- NULL
mydata$`Col Name` <- NULL

#normalizing data (if needed)
#Min Max normalization
normalize <- function(x){
  return((x- min(x))/ (max(x) - min(x)))
}

dataMMNorm <- as.data.frame(lapply(mydata, normalize))

#Z-Score normalization
dataZNorm <- as.data.frame(scale(mydata))