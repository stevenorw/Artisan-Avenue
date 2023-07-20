#  Set the working directory
setwd("C:/Users/username/Desktop/Artisan Ave")

# Load the libraries
library(readxl)
library(dplyr)
library(ggplot2)
library(lubridate)

# Read the Data
data<- read_excel("ArtisanAve.xlsx")

# Convert character variables into factors
data$Gender <- as.factor(data$Gender)
data$Marital_Status <- as.factor(data$Marital_Status)
data$Customer_Status <- as.factor(data$Customer_Status)

# Summarizing the data
summary(data)
 
# Group by customer status
group_data <- data %>% group_by(Customer_Status) %>%
  summarise(total_customers = n())

# Viewing the data
View(group_data)

# Plot the data
ggplot(data = group_data, aes(x= Customer_Status, y=total_customers)) + 
  geom_bar(stat = "identity", width = 0.5, fill = "steelblue") +
  labs(title = "Total Customers by Customer Status", x = "Customer Status", y = "Total Customers")
  
# Calculating mean of age for customers
mean_age_per_customer <- data %>%
  group_by(Customer_Status) %>%
  summarise(mean_age = mean(Age))

# Viewing the data
View(mean_age_per_customer)

# Plot the data
ggplot(data = mean_age_per_customer, aes(x = Customer_Status, y = mean_age)) +
  geom_bar(stat = "identity", width = 0.5, fill = "red") + 
  labs(title = "Mean Age by Customer Status", x = "Customer Status", y = "Mean Age")

# Calculating total amount spent per customer status
total_amount_spent <- data %>%
  group_by(Customer_Status) %>%
  summarise(total_amount = sum(Amount_Spent))

# Viewing the data
View(total_amount_spent)

# Plot the data
ggplot(data = total_amount_spent, aes(x = Customer_Status, y = total_amount)) +
  geom_bar(stat = "identity", width = 0.5, fill = "green") + 
  labs(title = "Total Amount Spent by Customer Status", x = "Customer Status", y = "Total Amount Spent")
  
# Calculate the average amount spent by customers
Average_amount_spent <- data %>%
  group_by(Customer_Status) %>%
  summarise(ave_amount = mean(Amount_Spent))

# View the data
View(Average_amount_spent)

# Plot the data
ggplot(data = Average_amount_spent, aes(x = Customer_Status, y = ave_amount)) +
  geom_bar(stat = "identity", width = 0.5, fill = "purple") + 
  labs(title = "Average Amount Spent by Customer Status", x = "Customer Status", y = "Average Amount Spent")
  
# Calculate the average number of purchases by customers
Avg_purchase_per_customer <- data %>%
  group_by(Customer_Status) %>%
  summarise(ave_purchase = mean(Number_of_Purchases))

# View the data
View(Avg_purchase_per_customer)
  
# Plot the data
ggplot(data = Avg_purchase_per_customer, aes(x = Customer_Status, y = ave_purchase)) +
  geom_bar(stat = "identity", width = 0.5, fill = "orange") + 
  labs(title = "Average Number of Purchases by Customer Status", x = "Customer Status", y = "Average Number of Purchases")
  
# Plot the correlation between age and total amount spent
ggplot(data = data, aes(x = Age, y = Amount_Spent)) +
  geom_point(size = 1, colour = "red") + 
  geom_smooth(method = "lm", se = FALSE, size = 1) + 
  labs(title = "Correlation between Age and Total Amount Spent", x = "Age", y = "Total Amount Spent")
  
# Calculate the total amount spent per gender
amount_spent_per_gender <- data %>%
  group_by(Gender) %>%
  summarise(total_amount = sum(Amount_Spent))

# View the data
View(amount_spent_per_gender)

# Plot the data
ggplot(data = amount_spent_per_gender, aes(x = Gender, y = total_amount)) +
  geom_bar(stat = "identity", width = 0.5, fill = "blue") + 
  labs(title = "Total Amount Spent Per Gender", x = "Gender", y = "Total Amount Spent")
  
# Calculate the average amount spent per gender
ave_spent_per_gender <- data %>%
  group_by(Gender) %>%
  summarise(ave_amount = mean(Amount_Spent))

# View the data
View(ave_spent_per_gender)

# Plot the data
ggplot(data = ave_spent_per_gender, aes(x = Gender, y = ave_amount)) +
  geom_bar(stat = "identity", width = 0.5, fill = "yellow") + 
  labs(title = "Average Amount Spent Per Gender", x = "Gender", y = "Average Amount Spent")
  
# Calculate the total amount spent per Marital Status
amount_spent_per_MS <- data %>%
  group_by(Marital_Status) %>%
  summarise(total_amount = sum(Amount_Spent))

# View the data
View(amount_spent_per_MS)

# Plot the data
ggplot(data = amount_spent_per_MS, aes(x = Marital_Status, y = total_amount)) +
  geom_bar(stat = "identity", width = 0.5, fill = "black") + 
  labs(title = "Total Amount Spent Per Marital Status", x = "Marital Status", y = "Total Amount Spent")
  
# Calculate the average amount spent per Marital Status
ave_spent_per_MS <- data %>%
  group_by(Marital_Status) %>%
  summarise(ave_amount = mean(Amount_Spent))

# View the data
View(ave_spent_per_MS)

# Plot the data
ggplot(data = ave_spent_per_MS, aes(x = Marital_Status, y = ave_amount)) +
  geom_bar(stat = "identity", width = 0.5, fill = "grey") + 
  labs(title = "Average Amount Spent Per Marital Status", x = "Marital Status", y = "Average Amount Spent")
  
# Plot the joint plot between age and total amount spent
ggplot(data = data, aes(x = Age, y = Amount_Spent)) +
  geom_point(size = 1, colour = "black") +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Joint Plot of Age vs. Total Amount Spent", x = "Age", y = "Total Amount Spent")
  
# Calculate customers per month
customers_per_month <- data %>%
  group_by(Month) %>%
  summarise(total_customers = n())

# View the data
View(customers_per_month)

# Plot the data
ggplot(data = customers_per_month, aes(x = Month, y = total_customers)) +
  geom_bar(stat = "identity", width = 0.5, fill = "brown") + 
  labs(title = "Total customers per month", x = "Month", y = "Total Customers")
  
# Calculate customers per month and year
customers_per_month_year <- data %>%
  group_by(Month, Year) %>%
  summarise(total_customers = n())

# View the data
View(customers_per_month_year)

# Plot the data
ggplot(data = customers_per_month_year, aes(x = Month, y = total_customers, colour = Year)) +
  geom_line() + 
  labs(title = "Total customers per month and year", x = "Month", y = "Total Customers") + 
  geom_point()

# Calculate the total amount spent per month and year
total_amount_month_year <- data %>%
  group_by(Month, Year) %>%
  summarise(total_amount = sum(Amount_Spent))

# View the data
View(total_amount_month_year)

# Plot the data
ggplot(data = total_amount_month_year, aes(x = Month, y = total_amount, colour = Year)) +
  geom_line() + 
  labs(title = "Total amount spent per month and year", x = "Month", y = "Total Amount Spent") + 
  geom_point()