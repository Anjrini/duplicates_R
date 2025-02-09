rm(list = ls())

setwd("C:/Users/anjrini/Desktop/r/r2")

source("duplicates.r")

df<- read.csv("test.csv",header = FALSE)

dups(df = df,n = 1)[[1]] # unique values 
dups(df = df,n = 1)[[2]] # duplicate values 

# the duplicates using R base command
df[duplicated(x = df,fromLast = FALSE),]

