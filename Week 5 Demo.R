####################
## Week 5
###################

# import the diabetes data frame
diabetes_data <- read.csv("diabetes.csv", na="")
str(diabetes_data)

# check for missing variables. Delete if there are any
incomplete_data <- diabetes_data[complete.cases(diabetes_data),]
md.pattern(diabetes_data)




library(VIM)
missing_values <- aggr(diabetes_data, prop = FALSE, numbers = TRUE)

# show content of missing values
summary(missing_values)


# create a new variable called to Date that contains the month 
# and year data

#diabetes_data$Date <- paste(diabetes_data$Month, diabetes_data$Year, "01", sep='/')
#diabetes_data$Date <- as.Date(diabetes_data$Date, format ="%m/%Y/%d")
#str(diabetes_data)

converted_date <- paste(diabetes_data$Month, diabetes_data$Year, sep ="/")
converted_date

# add the day element into the variable
converted_date <- paste("01", diabetes_data$Month, diabetes_data$Year, sep ="/")
converted_date
diabtetes_data$Date <- as.Date(converted_date, "%d/%m/%Y")
str(diabetes_data)

# plot the status variable using the plot() function
# convert to a factor first
#plot(diabetes_data$Status)
diabetes_data$Status <- factor(diabetes_data$Status)
str(diabetes_data)
plot(diabetes_data$Status, main ="Status Summary", 
     xlab="Status", 
     ylab="Score")
summary(diabetes_data$Status)

# save the modified diabetes data frame
write.csv(diabetes_data, file = diabetes_data_modified.csv)

# add titles to the chart that are relevant
