# Mustafa Anjrini 09.02.2025
# R script to get the duplicates and unique values

# provide the data frame df as well as the location of the column
dups<-function(df,n){ 
  
  df<-as.data.frame(df)
  df$countme<-0
  df[is.na(df[,n]),n]<-"NA"
  df[,n]<-sapply(df[,n], function(x) {tolower(x)})
  df<-df[order(df[,n]),]
  l<- dim(df)[2]
  
  for (i in 2:(length(df[,l])-1)) {
    if(i==2 & df[i,n]==df[i-1,n] & df[i,n]==df[i+1,n]){
      df[i-1,l]<-1
      df[i,l]<-2
      df[i+1,l]<-3
    }
    else if(i==2 & df[i,n]==df[i-1,n]){
      df[i-1,l]<-1
      df[i,l]<-2
    }
    else if (df[i,n]==df[i+1,n] & df[i,n]!=df[i-1,n]) {
      df[i,l]<-1
      df[i+1,l]<-df[i,l]+1
    }
    else if(df[i,n]==df[i+1,n] & df[i,n]==df[i-1,n]){
      df[i+1,l]<-df[i,l]+1
    }
  }
  dup<-df[df[,l]>0,]
  no_dup<-df[df[,l]<2,]
  z<-list(0,0)
  z[[1]]<-no_dup[,-l]
  z[[2]]<-dup[,-l]
  return(z)
  # The result is a list containing the z[[1]] the no duplicates value
  # including one observation from each duplicate
  # while the other list z[[2]] contains the duplicate values
}

