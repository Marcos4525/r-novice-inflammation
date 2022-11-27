# package(readr)
library(readr)
data01 <-read.csv("data/data/inflammation-01.csv", header = FALSE, sep = ',')

#Output and Type of Data Class
class(data01)
typeof(data01)
str(data01)

#Question 1:Dimensions of data01
dim(data01)

#Extract Particular Columns and Rows
data01[30, 20]
data01[c(1, 3, 5), c(10, 20)]

#Question 2: First ten columns of values for the first four rows, and first ten columns of rows 5 to 10
data01[c(1:4), c(1:10)]
data01[c(5:10), c(1:10)]

#Addressing Columns by Name
# first row, all of the columns
patient_1 <- data01[1, ]
# max inflammation for patient 1
max(patient_1)

#Change Max to Sum
# first row, all of the columns
patient_1 <- data01[1, ]
# sum of inflammation for patient 1
sum(patient_1)

# max inflammation for patient 1
max(data01[1, ])

#minimum inflammation for patient 2 on day 7
# second row, all of the columns
patient_2 <- data01[2, ]
# minimum of inflammation for patient 2
min(patient_2)

#Forcing R to read data as numeric
max(data01[1, ])
mean(data01 [1, ])
mean(as.numeric(data01[1, ]))

#Plotting the data
avg_patient_inflammation <- apply(data01, 1, mean)
avg_day_inflammation <- apply(data01, 2, mean)
plot(avg_day_inflammation)

#Max Inflammation per Day
max_day_inflammation <- apply(data01, 2, max)
plot(max_day_inflammation)

#Min Inflammation per Day
min_day_inflammation <- apply(data01, 2, min)
plot(min_day_inflammation)
