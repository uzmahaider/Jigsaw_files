# In this session:

# 1) Assigning variables in R
# 2) Creating Vectors and Vector operations
# 3) Indexing in R
# 4) Creating data frame from vectors
# 5) Key syntax/commands for data frames
# 6) Importing data files in R

# Variables in R: In R we can assign variable a value by using "=" or "<-".

# NOTE: To execute the code you can use RUN or cntrl+enter

a = 120

b <- 210

c = a + b

# NOTE: If a variable contain string (text/characters), the values need to enclosed
# in '' or ""

# NOTE: If you save two values with same variable name, it will overwrite the previous
# one

# NOTE: R variables are case sensitive

a = 'amit'

# Data structure: The structure in which data is saved in Memory is known as data structures
# In R we have following data structures: 
# 1) Vector: These are single dimension storage of data. Vectors are most popular data structure
# 2) List
# 3) Matrix
# 4) Dictionary: This is more popular in Python
# 5) Tuples: These are more popular in Python

# Vectors: Is the single dimension storage of data. The data is stored using index value location 
# starting from 1. To create a vector with multiple elements, you need to pass the elements using
# a c() (concatenation) function and separated by a comma.

# Example1: Create a vector containing the name of your 5 friends

name = c('Ram', 'mohan', 'Sunil', 'Rita', 'Raju')

# Important command for vectors: 

# 1) length() - This command will help to find the number of elements in a vector

length(name)

# 2) str() - This command will help you to find the data type of a vector and display
# the vector elements

str(name)

# 3) Square bracket indexing []: We can access any specific elements of a vector using 
# its index values by square bracket indexing

# Example 2: Accessing the 3rd element of vector name

name[3]

# Example 3: Accessing the 1 and 3rd elements of a vector: We need to pass the index
# values in a c() function inside a square bracket

name[c(1,3)]

# Example 4: When we need to access the elements in a sequence of index values, we can us
# : to define the index location interval

name[1:3]

# Example 5: You can use c() function to merge different sequences. 

name[c(1:2,4:5)]

# Hands-on: Please create two more vectors: One containing the age of your 5 friends
# and second on containing the location of your 5 friends

age = c(30,35,40,25,40)

location = c("Delhi", "Mumbai", "Pune", "Jaipur", "Bangalore")

# Converting these three vectors in to a data frame: A data frame is a two dimensional 
# arrangement of data in rows and columns. We can use a command data.frame() to convert
# vectors into a data frame

df = data.frame(name, age, location)

# Important command for a data frame: 

# 1) View() : This command will open your data frame in R studio as a new tab

View(df)

# 2) head() : This command will help you to view top rows for your data frame. By default, 
# it will give you top 5 rows, however, you can control this.

head(df,2)

# 3) tail() : This command will help you to view last rows for your data frame. By default, 
# it will give you last 5 rows, however, you can control this.

tail(df,2)

# 4) summary(): This command will give you the math summary of each column of your data frame. If the column
# contain non-numerical values, the summary will contain only the frequency parameter

summary(df)

# 5) names() : This command will give you all the column names as outcome

names(df)

# 6) Accessing elements of a data frame: We can access - any specific row, column or multiple rows and columns
# using Square bracket indexing. In Square bracket you need to mention [RowIndex,ColumnIndex]

df[3,2]

# Example 1: Accessing multiple rows and a specific column from a data frame

df[c(1,3), 3]

# Example 2: Accessing multiple rows and multiple columns

df[1:3, c(1,3)]

# Example 3: Accessing all the columns of row 1 and 3

df[c(1,3)]

# 7) Accessing a specific column values to perform math operation we can use $ sign: Example if 
# i need to find the average age for my friends

mean(df$age)

sum(df$age)

# Importing external data in R: Lets see how to import Excel file or CSV files in R
# We can use a command read.csv("path of file/name of file.csv")

ext_data = read.csv("C:/Users/Bijusha/Desktop/Master Location Pop Table.csv")




