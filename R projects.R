library(ggplot2)
2*4
widgets <-2
library(readxl)
install.packages("tidyverse")
my_data <-read_excel(file.choose())
df <-read_excel(file.choose())
head(my_data)
tail(my_data)
dim(my_data)
str(my_data)
names(my_data)
log_vec <-c(TRUE, FALSE,TRUE,FALSE)
seq(1,19, by=2)
seq(1,19,length=10)
seq(1,19,2)
seq(1,length=10, by=2)
assign("vec2",c(45,55,23,40,88,45))
vec2       
assign("vec3",c(5,35,20,14,55,24))
vec3
vec4=vec2+vec3
vec4
vec5=vec2*vec3
vec5
?vector
?readxl

vec4[-5]

