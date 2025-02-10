# Mustafa Anjrini on 09.02.2025

rm(list = ls()) # deleting all the previous variables

# please set a working directory
setwd("C:/Users/anjrini/Desktop/r/dupli")

#loading the function
source("duplicates_function.r")

#loading the data frame from the csv file
df<- read.csv("test.csv",header = FALSE)

# applying our function dups for getting:
# the first line to get the unique values
# the second line to get the duplicates
# important is to provide the data frame df as well as the column number n in this case I chose n=1
dups(df = df,n = 1)[[1]] # unique values 
dups(df = df,n = 1)[[2]] # duplicate values 

# comparing with the duplicates we get using R base command
df[duplicated(x = df),]
