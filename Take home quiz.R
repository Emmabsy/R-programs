colordf<-data.frame(
  color=c("Red", "Yellow", "Green","Blue"),
  numbers=c(10,22,11,5)
)

print(colordf)

#Write a R program to create a matrix from a list of given vectors
Age<-c(34,40,30,23,21,24,44,60,90,94)
Height<-c(1.7,1.65,1.2,1.69,1.51,1.36,2.37,2.08,1.5,1.6)
Gender<- c("M", "F", "F", "F", "F", "F", "F", "M", "M", "M")

m<-matrix(c(age,height,gender),ncol = 3)

print(m)


m<-cbind(age,height,gender)

print(m)

m<-rbind(age,height,gender)

print(m)
#two vectors create a dataframe and name it as A_H

A_H<-data.frame(
  Age=c(17,19,20,15,13,19,23,25,29,27),
  Heights=c(105, 111, 90, 88, 126,145,157,143,170,185)
)


print(A_H)
#Chi-square

chisq.test(A_H)

#Five number summary for dataframe
fivenum(A_H$Age)
fivenum(A_H$Heights)

sapply(A_H[c("Age","Heights")], fivenum)

#new vector

Gender<-c("M", "M", "M", "F", "F", "M", "F", "M", "F", "M")
print(Gender)
print(is.factor(Gender))

#convert to factor

genderfator<-factor(Gender)

print(genderfator)
print(is.factor(genderfator))

#Add the vector gender into dataframe A_H to form a new column Gender and show the dataframe structure
newdf<-A_H
newdf$gendern<-Gender
newdf




