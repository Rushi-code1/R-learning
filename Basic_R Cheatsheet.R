# R Cheatsheet

## Basic Arithmetic Operations

# Addition
x + y

# Subtraction
x - y

# Multiplication
x * y

# Division
x / y

# Exponentiation
x^y

# Modulus (remainder)
x %% y

# Integer Division
x %/% y


## Comparison Operators

# Equal to
a == b

# Not equal to
a != b

# Less than
a < b

# Greater than
a > b

# Less than or equal to
a <= b

# Greater than or equal to
a >= b


## Logical Operators

# Logical AND
x & y

# Logical OR
x | y

# Logical NOT
!x

# Element-wise AND
x && y

# Element-wise OR
x || y


## Data Types

# Numeric
num <- 42

# Integer
int <- 42L

# Character (string)
str <- "Hello, World!"

# Logical (boolean)
bool <- TRUE  # or FALSE

# Complex
comp <- 1 + 2i


## Data Structures

### Vectors

# Create a vector
vec <- c(1, 2, 3, 4, 5)

# Access elements
vec[1]  # First element

# Modify elements
vec[1] <- 10


### Lists

# Create a list
lst <- list(name = "Alice", age = 25, scores = c(90, 85, 88))

# Access elements
lst$name
lst[[1]]


### Matrices

# Create a matrix
mat <- matrix(1:9, nrow = 3, ncol = 3)

# Access elements
mat[1, 2]  # Element in the first row, second column


### Data Frames

# Create a data frame
df <- data.frame(Name = c("Alice", "Bob"), Age = c(25, 30))

# Access columns
df$Name

# Access rows and columns
df[1, "Age"]


## Control Structures

### If-Else Statements

if (condition) {
  # Code if condition is true
} else {
  # Code if condition is false
}


### For Loops

for (i in 1:10) {
  print(i)
}


### While Loops

while (condition) {
  # Code to execute while condition is true
}


### Repeat Loops (with break)

repeat {
  # Code to execute
  if (condition) {
    break  # Exit the loop
  }
}


## Functions
# Define a function
my_function <- function(arg1, arg2) {
  # Function body
  return(result)
}

# Call a function
my_function(value1, value2)


## Apply Family Functions

# Apply a function over a vector
sapply(vec, function(x) x^2)

# Apply a function over a list
lapply(lst, length)

# Apply a function over margins of an array
apply(mat, 1, sum)  # Sum of rows


## Reading and Writing Data

### Read Data

# Read a CSV file
data <- read.csv("file.csv")

# Read a table
data <- read.table("file.txt", header = TRUE)

### Write Data

# Write to a CSV file
write.csv(data, "file.csv")

# Write to a table
write.table(data, "file.txt", sep = "\t")


## Basic Plotting

# Basic plot
plot(x, y)

# Histogram
hist(data$column)

# Boxplot
boxplot(data$column)


## Packages
# Install a package
install.packages("package_name")

# Load a package
library(package_name)