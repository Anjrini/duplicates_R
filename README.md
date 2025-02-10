# duplicates_R

in this script I have implemented a function that can deliver duplicates in a data frame including the first occuring value. This is sometimes better than the R base command "duplicated" which does not show the first occuring or last occuring value depending on how the attribute "fromLast" is provided. It is sometimes useful and needed for some data comparison or analysis.

The function named "dups" and can be called through the command "Sourced".

The two main attributes to be provided to this function is:
1- the data frame df
2- the number of column where the duplicates are to be considered.

The result includes two list:
1- the first list the unique values in this column if needed (just another implementation of the function "unique" in R base)
2- the second list the duplicates values

I have also provided an example with an CSV file which can be also downloaded.


