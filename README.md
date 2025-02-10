# duplicates_R

- in this script I have implemented a function that can deliver duplicates in a data frame including the first occuring value. This is sometimes better than the R base command "duplicated" which does not show the first occuring or last occuring value depending on how the attribute "fromLast" is provided. It is in some cases useful and needed for a data comparison or analysis.

- The function named "dups" and can be called through the command "source" as in the file dup.R .

- The two main attributes to be supplied to the function are:

1- the data frame df.
2 - the location of column where the duplicates are to be considered.

- The result includes two list:

1- the first list contains the unique values in this column if needed (just another implementation of the function "unique" in R base).
2- the second list contains the duplicates values.

- I have also provided an example with a CSV file which can also be downloaded.

- If you have any query or suggestion, please contact me.

Best regards,

Mustafa Anjrini


