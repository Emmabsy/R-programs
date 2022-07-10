library(dplyr)
library(readxl)
data<-read_excel(file.choose())
head(data)
View(data)
str(data)
glimpse(data)
summary(data)
dim(data)
skim(data)


#null values
sum(is.na(data)) #identify missing values

df1<-na.omit(data)#remove missing values

#Data summary
install.packages("DataExplorer")
library(DataExplorer)
DataExplorer::create_report(data)

library(skimr)
skim(data)


#Descriptive analysis

max(data$'Credit amount')
quantile(data$'Credit amount', 0.25)
quantile(data$'Credit amount', 0.75)
quantile(data$'Credit amount', 0.95)
IQR(data$'Credit amount')
range(data$'Credit amount')

#Correlations
credit<-data$'Credit amount'
Duration<-data$Duration
cor(credit,Duration)

#Missing Data
rowSums(is.na(data)) #No of missing per row

colSums(is.na(data)) #No of missing per colummn
rowMeans(is.na(data)) #No of missing per row(another way)
















