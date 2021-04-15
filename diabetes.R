###################
# Week 4 - Diabetes
###################

# Read in the dataset first
diabetes_data <- read.csv("Diabetes-md.csv", na="")

#What type is the data?
#structure
str(diabetes_data)
#class
class(diabetes_data)

#Examine missing data
is.na(diabetes_data)