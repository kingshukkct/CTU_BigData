## Load a file
mydata<-read.csv("hw1_data.csv")

##what are the column names of the dataset?
names(mydata)

#Extract the first 2 rows of the data frame and print them to the console. What does the output look like?

mydata[c(1,2),]

#How many observations (i.e. rows) are in this data frame?

nrow(mydata)

#Extract the last 2 rows of the data frame and print them to the console. What does the output look like?

mydata[c(152,153),]

#What is the value of Ozone in the 47th row?

mydata[47,]

#How many missing values are in the Ozone column of this data frame?

#para 1 variable
sum(is.na(mydata$Ozone))

#para toda la matriz
propmiss <- function(dataframe) lapply(dataframe,function(x) data.frame(nmiss=sum(is.na(x)), n=length(x), propmiss=sum(is.na(x))/length(x)))
propmiss(mydata)

#What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.

#forma 1
mean(mydata$Ozone,na.rm=TRUE)

#forma 2
sum(mydata$Ozone,na.rm=TRUE)/sum(!is.na(mydata$Ozone))

#Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?

mean(mydata$Solar.R [mydata$Ozone>31 & mydata$Temp>90], na.rm=TRUE)


#What is the mean of "Temp" when "Month" is equal to 6? 

mean(mydata$Temp [mydata$Month==6], na.rm=TRUE)

#What was the maximum ozone value in the month of May (i.e. Month = 5)?

max(mydata$Ozone [mydata$Month==5], na.rm=TRUE)

