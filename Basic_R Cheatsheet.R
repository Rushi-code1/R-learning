# ------------------------------
# R Programming Tutorial Script
# ------------------------------

# 1. Basics of R

# Basic arithmetic operations
x <- 10
y <- 5
sum_xy <- x + y      # Addition
diff_xy <- x - y     # Subtraction
prod_xy <- x * y     # Multiplication
quot_xy <- x / y     # Division
mod_xy <- x %% y     # Modulus (remainder)
pow_xy <- x^y        # Exponentiation

# Print results
print(sum_xy)
print(diff_xy)
print(prod_xy)
print(quot_xy)
print(mod_xy)
print(pow_xy)

# 2. Data Types in R

# Numeric
num <- 42.5

# Integer
int <- 10L

# Logical
logi <- TRUE

# Character
char <- "Hello, R!"

# Vector (homogeneous collection)
vec <- c(1, 2, 3, 4, 5)

# List (heterogeneous collection)
lst <- list(name = "John", age = 25, scores = c(90, 85, 88))

# Data Frame (tabular data)
df <- data.frame(
  id = 1:3,
  name = c("Alice", "Bob", "Charlie"),
  score = c(85, 92, 88)
)

# 3. Control Structures

# If-else statement
num <- 10
if (num > 0) {
  print("Positive number")
} else if (num < 0) {
  print("Negative number")
} else {
  print("Zero")
}

# For loop
for (i in 1:5) {
  print(i)
}

# While loop
count <- 1
while (count <= 5) {
  print(count)
  count <- count + 1
}

# 4. Functions in R

# Define a simple function
greet <- function(name) {
  message <- paste("Hello,", name)
  return(message)
}

# Call the function
greeting <- greet("Alice")
print(greeting)

# 5. Working with Data

# Reading data from a CSV file (uncomment if you have a CSV file)
# data <- read.csv("data.csv")

# Create a sample data frame
data <- data.frame(
  id = 1:5,
  name = c("A", "B", "C", "D", "E"),
  age = c(23, 30, 22, 24, 29),
  score = c(85, 90, 88, 95, 92)
)

# Summary statistics
summary(data)

# Accessing specific columns
names <- data$name
ages <- data$age

# Filtering data
high_scorers <- subset(data, score > 90)

# Adding a new column
data$grade <- ifelse(data$score > 90, "A", "B")

# 6. Data Manipulation with dplyr

# Load dplyr library
library(dplyr)

# Select columns
selected_data <- select(data, name, score)

# Filter rows
filtered_data <- filter(data, score > 90)

# Arrange data by a column
arranged_data <- arrange(data, desc(score))

# Mutate (add new columns)
mutated_data <- mutate(data, double_score = score * 2)

# Summarize data
average_score <- summarise(data, avg_score = mean(score))

# 7. Data Visualization with ggplot2

# Load ggplot2 library
library(ggplot2)

# Create a simple scatter plot
ggplot(data, aes(x = age, y = score)) +
  geom_point() +
  labs(title = "Scatter Plot of Age vs Score",
       x = "Age",
       y = "Score")

# Create a bar plot
ggplot(data, aes(x = name, y = score)) +
  geom_bar(stat = "identity") +
  labs(title = "Bar Plot of Scores by Name",
       x = "Name",
       y = "Score")

# Create a histogram
ggplot(data, aes(x = score)) +
  geom_histogram(binwidth = 5) +
  labs(title = "Histogram of Scores",
       x = "Score",
       y = "Frequency")

# 8. Working with Factors

# Create a factor
gender <- factor(c("Male", "Female", "Female", "Male", "Male"))

# Summary of the factor
summary(gender)

# Levels of the factor
levels(gender)

# 9. Handling Missing Data

# Create a vector with missing values
vec_with_na <- c(1, 2, NA, 4, 5, NA)

# Check for NA values
is.na(vec_with_na)

# Remove NA values
clean_vec <- na.omit(vec_with_na)

# Replace NA with a value
vec_with_na[is.na(vec_with_na)] <- 0

# 10. Basic Statistical Functions

# Mean, median, standard deviation
mean_val <- mean(data$score)
median_val <- median(data$score)
sd_val <- sd(data$score)

# Correlation
cor_val <- cor(data$age, data$score)

# Print statistical results
print(mean_val)
print(median_val)
print(sd_val)
print(cor_val)

# 11. Writing Data to Files

# Write data frame to CSV
write.csv(data, "output.csv", row.names = FALSE)

# Write data frame to RDS (R's binary format)
saveRDS(data, "output.rds")

# 12. Reading Data from Files

# Read data from CSV (uncomment if you have a CSV file)
# new_data <- read.csv("output.csv")

# Read data from RDS
new_data_rds <- readRDS("output.rds")

# 13. Using Packages

# Install a package (uncomment if necessary)
# install.packages("tidyverse")

# Load a package
library(tidyverse)

# Using functions from the package
tidy_data <- data %>%
  filter(score > 90) %>%
  arrange(desc(score))

# 14. Advanced Data Visualization

# Create a boxplot
ggplot(data, aes(x = grade, y = score)) +
  geom_boxplot() +
  labs(title = "Boxplot of Scores by Grade",
       x = "Grade",
       y = "Score")

# Create a line plot
ggplot(data, aes(x = id, y = score, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = "Line Plot of Scores Over ID",
       x = "ID",
       y = "Score")

# 15. Exporting Plots

# Save the last plot to a file
ggsave("plot.png")

# 16. R Markdown (for reports and documentation)

# R Markdown is beyond the scope of a script, but it's worth noting that it's a powerful tool
# for creating dynamic documents with embedded R code. Consider learning R Markdown for
# generating reports.

# 17. Closing Remarks

# This script provides an overview of many R concepts, from basic programming to data
# manipulation and visualization. Explore each section and modify the examples to
# deepen your understanding of R programming.

# End of Script
