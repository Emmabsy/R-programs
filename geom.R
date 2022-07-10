library("ggplot2")
library("readxl")
df<-read_excel(file.choose())
df(head)

library("ggplot2")   

#Basic histogram used for continous data
ggplot(df,aes(x=jobtime))+geom_histogram(bins=30)

#change the width of bins
plot1<-ggplot(df, aes(x=jobtime)) +geom_histogram(binwidth = 10)
plot1
plot1+labs(title="jobtime")

#Column barcharts
plot2<-ggplot(df,aes(x=jobcat)) + geom_bar() + coord_flip()#x
plot2<-ggplot(df,aes(y=jobcat)) + geom_bar() + coord_flip()#y
print(plot2)


#Add a data label
plot2+labs(title="Jobcategories", field="Green")

#Stacked barchart

plot3<-ggplot(df, aes(x=jobcat, fill=gender))+geom_bar()
print(plot3)

#Dotplot
plot4<-ggplot(df,aes(x=jobcat,fill=gender))+geom_dotplot(binwidth =10 )
print(plot4)

#Creating boxplot
plot5<-ggplot(df,aes(x=gender,y=salary)) +geom_boxplot()
print(plot5)

plot6 <-ggplot(df,aes(x=salary, fill=gender))+geom_boxplot()
print(plot6)

#lineplot
plot7<-ggplot(df,aes(x=gender, y=salary))+ geom_line(color="red")
print(plot7)
plot8<-ggplot(df,aes(x=salbegin, y=salary))+ geom_line(color="yellow")
print(plot8)
plot9<-ggplot(df,aes(x=educ, y=salary))+ geom_line(color="red")
print(plot9)

#Scatterplot
#Shows the relationship/correlation of two variables
plot10<-ggplot(df, aes(x=salary, y=gender)) +geom_sca(color="red")
print(plot10)
plot10<-ggplot(df, aes(x=salary, y=gender)) +geom_point(color="red")
print(plot10)

plot11<-ggplot(df, aes(x=educ))+geom_line(aes(y=salary), col="red", linetype="dashed")
plot11

plot12<-ggplot(df, aes(x=educ))+geom_line(aes(y=salary), col="green")+
  geom_line(aes(y=salbegin), col="red", linetype="twodash")
plot12

plot13<-ggplot(df, aes(x=jobtime))+geom_line(aes(y=salary), col="green")+
  geom_line(aes(y=salbegin), col="blue", linetype="dotted")
plot13

#jitter
plot14=ggplot(data=df, aes(x=gender, y=salary))+ geom_jitter(color="blue")
plot14


plot15=ggplot(data=df, aes(x=gender, y=salary))+ geom_violin(fill="red")
#print(plot15)
ggplotly(plot15)
#Density plot**has to be numeric
plot16<-ggplot(df, aes(x=salary))+geom_density(linetype="dashed")
plot16
plot17<-ggplot(df, aes(x=salbegin))+ geom_density(linetype="dashed", col="purple")
plot17

library(viridis)
library(hrbrthemes)
library(plotly)
library(dplyr)

#Themes in plots
#Histogram
df%>%
  filter(df$salary>35000)%>%
  ggplot(aes(x=salary))+
  geom_histogram(bins=10, col="green", fill="orange")+
  ggtitle("Employess with salary above 30k")+
  xlab("Salary")+
  ylab("Number of employees")

df%>%
  filter(df$salary>35000) %>%
  ggplot(aes(x=salary))+
  geom_histogram(bins=10, col="green",alpha=0.9, fill="red")+
  ggtitle("Employess with salry above 30k")+
  
#theme_test()
#theme_linedraw()
#theme_classic
#theme_minimal()
#theme_void()
#theme_dark
#theme_light
#theme_bw
#theme_grey
  


  






  
































  
   