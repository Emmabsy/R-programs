# Creating a vector as input.  
df <- c("June","May","Jupiter","Nish","Shubham","Clay","caleb","Mane","Grace","Darvin")  

print(df)  
print(is.factor(df))  

# Applying the factor function.  
factor_df<- factor(df)  

print(factor_df)  
print(is.factor(factor_df))
#Accessing 4th element of factor  
print(factor_df[4])  
#Accessing 5th and 7th element  
print(factor_df[c(5,7)])                
#Accessing all elemcent except 4th one  
print(factor_df[-4])  


# Creating a vector as input.  
data <- c("Nairobi","Newyork","Paris","Dublin","Brussels")  
factor_data<- factor(data)  # Applying the factor function.
print(factor_data)#Printing all elements of factor 
factor_data[4] <-"Tallinn" #Change 4th element of factor with sumit   
print(factor_data)
  
levels(factor_data) <- c(levels(factor_data), "Tallin") #Add new level
factor_data[4] <- "Tallin"
print(factor_data)

sex <- factor(c("male", "female", "female", "male"))
print(sex)
class(sex)
levels(sex)
nlevels(sex)


gl(n, k, labels)


x <- gl(2, 2, labels = c("Nairobi", "Mombasa","Kisumu"))
print(x)

gender <- factor(c("female", "male", "male", "female"  ));
gender[2]<-"female"
gender

gender <- factor(c("female", "male", "male", "female"  ));

# add new level
levels(gender) <- c(levels(gender), "other")   
gender[3] <- "other"
gender


# Creating the vectors for data frame  
height <- c(140,172,158,176,149,157,132,180)  
weight <- c(50,59,58,50,67,62,48,72)  
gender <- c("male","male","female","female","male","female","male","male")  

input_df<- data.frame(height,weight,gender) # Creating the data frame
print(input_df)  
print(is.factor(input_df$gender))# Testing if the gender column is a factor 
print(input_df$gender) # Printing the gender column to see the levels

age <- c(40, 49, 48, 40, 67, 52, 53) 
salary <- c(103200, 106200, 150200,
            10606, 10390, 14070, 10220)
gender <- c("male", "male", "transgender",
            "female", "male", "female", "transgender")
employee<- data.frame(age, salary, gender) 
print(employee) 
print(is.factor(employee$gender))
class(gender)





















