#Workshop 1
#-------------------------------------------#
#MB5370: Introduction to Programming 
#Caterina Palma 
#May 2026 

#Path to find Rscript --> ~/Documents/University 2026/Trimester 2/MB5370 Techniques in Marine Science/R Scripts/Module_01.R 
#-------------------------------------------# 

#-------------------------------------------# 
#Workshop 01. Introduction ##### 

#####1.3.7 Getting Started#####

2+1

#Using : runs a sequence of numbers from 1 to 30. 
1:30

#####1.3.8 Variables & Assessment##### 
#This section focuses on understanding how data is stored in R and why that matters. 

#The symbol <- in R assigns value to an object, known as "assignment operator". 
#Assigning two objects in my script. You can see it goes into the 'Environment' box on the top right. 

age <- 25 
first_name <- 'Bill'

#Then using these assigned objects... 

age + 1
age + age 

#Exercise to test my knowledge and see if R works 
#Using R to calculate the sum of numbers then assigning a name to the result. 
#Then making another object with a number and calling it another name and adding them together. 

15+25.1+20.25 
'math' <- 15+25.1+20.25 
'numbers' <- 14

math + numbers 

#####1.3.9 Functions#####

#R has lots of built-in functions e.g. 'round' and 'floor'. 

years_old <- 25.7
round(years_old) #rounds up 
floor (years_old) #rounds down 

#We can also specify how many decimal places I want the number rounded to. 
years_old <- 25.765
round(years_old,2) #comma after the object to specify round to 2 decimal points. 
round(years_old,1) #comma after the object to specify round to 1 decimal point. 

#You can use R to get help for what each function means 
?round #use this to get help. 

args(round) # args() tells us what the function is expecting us to give it.
#in this case, it's telling us that 'round' is a function that expects us to give it a number and a digit that we want the number to be rounded up to. 

?paste #checking what the 'paste' function does. 

#The below is a function to make a sentence using multiple functions. 
#first give years_old a number, then use paste to get R to paste the sentence "Caterina is"... 

years_old <- 25.765
Caterina_age <- paste("Caterina is",years_old)
Caterina_age

age <- 25 
first_name <- 'Bill'
age + 1
age + age 
15+25.1+20.25
#15+25.1+20.25 <- 'math'
#Error in 15 + 25.1 + 20.25 <- "math" : 

#'math' <- 15+25.1+20.25 
#'numbers' <- 14
math + numbers 
years_old <- 25.7
round(years_old) #rounds up 
floor (years_old) #rounds down 
#We can also specify how many decimal places I want the number rounded to. 
years_old <- 25.765
round(years_old,2) #comma after the object to specify argument 
round(years_old,1)

?round
args(round)

?paste
Caterina_age <- 29
Caterina_age <- "Caterina is 29 years old" 
years_old <- 25.765

Caterina_age <- paste("Caterina is",years_old)
#Results Caterina_age [1] "Caterina is 25.765"

#####1.3.10 Debugging##### 
#Misconceptions - variables in programs do not work the same way as they do in spreadsheets 

grade <- 55
total <- grade +10
print(total)
grade <- 90
print(total)
#value of total in spreadsheet will be 100, but in programming a variable holds the value it was assigned, which was 65. 
#so to get it up to speed we will need to do the below... 

total <- grade +10 
print(total)
#now the total will be 100. 

#Debugging depends on being able to read your code, this is the most effective way of finding errors. 
#here we learn to read code by prediting its behaviour before we run it. 

p<- 2 
z<- 5
out <- p*z
print(out)
#RESULT = 10 

#We can ask R if the item we gave them, e.g. x, is a character or if its numeric. 
x<- 1
is.character(x)
is.numeric(x)

#Exercise: What's wrong with this code? 

my_quiz <- c("uno", "dos", "tres", "cuatro", "cinco")
print(my_quiz)
str(my_quiz)
#len(my_quiz) #len is not a function, it was supposed to be "length" - we can check this by using the 'Help' on bottom right-hand side
#by starting to type len in, and see what comes up. 

#####1.3.11 Data Types##### 

#There are six basic data types: 
#character, numeric, integer, logical, complex, and raw. We will only use the first 4. 

#R (and other programming languages) have built-in functions to help examine objects to better understand their type, for instance: 
#class() = what kind of object it is (high-level)? 
#typeof() = what is the object's data type? 
#length() = how long is it? 
#attributes() = does it have metadata? 

#Exercise 
my_numeric_variable <- 4.2
class(my_numeric_variable) #RESULT = numeric, because variable is a number. 
typeof(my_numeric_variable) #RESULT = double - unsure of what this means. 
length(my_numeric_variable) #RESULT = 1, because there is one variable. 
attributes(my_numeric_variable) #RESULTS = NULL 

#####1.3.12 Data Structures##### 
#We has a hint early on in this workshop that there are different structures. Remember when we looked at this list... 
#list("uno", "dos"...)
#Elements of the data types can be combined to form a data structure. Think of elements as what you would put in a single cell in excel, with the whole spreadsheet the data structure. 

#R has many data structures, they include: 
#atomic vector, list, matrix, data frame, factors. 

#Vector is the most common. It is a collection of elements that are most commonly of the type character, numeric, integer, and logical. 
#We will make a vector with three numeric elements in it: 

y <- c(1, 2, 3) 

#OR a vector full of character elements: 

z <- c("Sarah", "Tracy", "Jon") 

#Exercise: 

class(z) #tells us the vector are characters. 
class(y) #tells us the vector are numbers. 

#There are also lists. Unlike vectors, values inside lists can be of several different types. 

x <- list(1, "a", TRUE) #the list has a number, a character, and a logical data type. 
x #this outputs each variable on a separate line. 

#####1.3.13 Data frames and tibbles##### 

#Rows and Columns like excel. Each column hols elements of the same type, meaning that data in each cell in a column of a data frame need to be the same type.
#We can import a data frame from an external file such as .csv, or.xlsx. 
#The function data.frame lets you make them by adding together different vectors and giving each one a column name. 

my_dataframe <- data.frame (no =c(1,2,3), c("tracy","jon","pete"), c(TRUE, FALSE, TRUE))
my_dataframe
str(my_dataframe)

#R guesses the type of each column. Sometimes it gets it wrong, so it's good get into the habit of checking and changing if necessary... 

my_dataframe$no = as.factor(my_dataframe$no)
str(my_dataframe)
#It is important that each vector is the same length (number of rows) because R won't allow you to have different columns with different lengths. 
#This is where you can use NA in a data with no data. 

#####1.3.14 Packages & Libraries##### 

#Downloading R packages. 

install.packages("tidyverse") #download and install. 
library(tidyverse) #load into current workspace. 

#now its downloaded and installed, its best to # it so it doesn't download and install every time you run the script. 

#Now lets run a simple function from the package you installed and loaded above, ggplot2. 
#library(ggplot2)

?ggplot2 #to learn about the package. 

#####1.3.15 Coding best practices##### 

#Loading packages 

#library(gglot2)
#library(tidyr)
#library(tidyverse)