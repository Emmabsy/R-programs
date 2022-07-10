Vec1 <-5:12

Vec1
Vec2 <-22:29 
Vec2
rbind(Vec1, Vec2) 
V3 <- vector("list", length = 15) 
V3
df<-data.frame(Gender=c("M", "F","F","M"),
               Age=c(10,22,11,5)
               
)
#Adding a column to a data grame
print(df)
weight<-c(65,77,89,90)
df$weight<-weight
print(df)
height<-c(120,145,170,189)
cbind(df,height)
df
#adding a row to a dataframe
new<-data.frame(Gender="F", Age=23,weight=65)
rbind(df, new)

#sorting
sort(df$Age)
# ranking
ranks<-order(df$Age)
ranks
df$Age
#Descending order
df[order(df$Gender,decreasing = TRUE),]

#Vectors

Vec4<-1:25
Vec4
#Odd Value
odd_value<-seq(1,20,2)
odd_value

even_value<-seq(2,20,2)
even_value
#vector
vec19<-seq(from=21, by=2,length.out=10)
vec19
#Vector Mnipulation
vec21<- c(2, 1,4)
vec22<-c(5,6,7)
vec22-vec21
vec21*vec22
vec22/vec21

vec21<vec22
vec21>vec22
#vector slicing and indexing

price<-seq(550,620,20)
names(price) <- paste("p", 1:7)

#Data inbuilt iris
data("iris")
head(iris)
#Check statistal summary of the dataset
summary(iris)
#Last column of the data
tail(iris)
#Structure of the dataset
str(iris)
#Create a data frame
days<-c("mon","tue","wed","thu","fri")
temp<-c(23.3,34.5,42.6,20.7,26.2)
rain<-c("TRUE","TRUE","FALSE","TRUE","FALSE")
df1<-data.frame(days,temp,rain)
df1

df1[1, ]#First row
df1[,2 ]#second row
df1[2:4,c("temp","days")]
df1$rain
df1["rain"]

#Subset of dataframe
subset(df)


































