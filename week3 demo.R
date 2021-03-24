# file downloaded from blackboard and inserted into data frame
# missing content replaced with NA
managers_data <- read.csv("managers.csv", na = "")

# view the structure of the data frame
str(managers_data)

# convert date to a date variable
# it is currently in mm/dd/yy
converted_date <- as.Date(managers_data$Date, "%m/%d/%y")
converted_date
str(converted_date)

# replaces the date field in the data frame
managers_data$Date <- converted_date
str(managers_data)

# convert age variable to int
managers_data$Age <- as.integer(managers_data$Age)
str(managers_data)

# select records within 15-10-18 and 01-11-18
start_date <- as.Date("2018-10-15")
end_date <- as.Date("2018-11-01")
new_date <- managers_data[
  managers_data$Date >= start_date & 
    managers_data$Date <= end_date,]
new_date

# drop attributes from data
include_list <- names(managers_data) %in% c("Green", "Car")
inlude_list

# This data frame only contains Q3 and Q4
new_managers <- managers_data[(include_list)]
new_managers
str(new_managers)

# using the subset function
# to extract all records where age > 35 or age <24
# only select Q1 - Q4
attach(managers_data)
new_data <- subset(
  managers_data, Age >35 | Age < 24,
  select = c(Q1, Q2, Q3, Q4))
new_data
detach(managers_data)

# select a subset of managers_data
# where gender = M and age > 25. Only show records
# from Gender to Q4 inclusive
gender_data <- subset(
  managers_data, Age >25 & Gender == 'M', select = Gender:Q4)
gender_data

# random sampling
# sample 3 records from the managers data frame
my_sample <- managers_data[sample(1:nrow(managers_data), 3, replace = FALSE),]
my_sample

# can we extract 10 samples
my_sample <- managers_data[sample(1:nrow(managers_data), 10, replace = TRUE),]
my_sample

# sorting data by age
attach(managers_data)
new_data <- managers_data[order(Age),]
new_data

# sort by gender and then age within each gender
# and store in data frame called sorted_data
sorted_data <- managers_data[order(Gender, Age),]
sorted_data

# save the random sample file to a csv file
write.csv(my_sample, file = "random sample.csv")
