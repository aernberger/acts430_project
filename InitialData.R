#Import the dataset
happiness.dataset <- read.csv("~/Desktop/ACTS430/Project/world_happiness_Update_report_2026.csv")

#Remove rank variable
happiness.data <- subset(happiness.dataset, select = -rank)

#Check data
head(happiness.data)
summary(happiness.data)

colSums(is.na(happiness.data))

sum(duplicated(happiness.data$country))

#Data cleaning - keep first duplicated
happiness.unique <- happiness.data[!duplicated(happiness.data$country), ]

sum(duplicated(happiness.unique$country))

head(happiness.unique)
summary(happiness.unique)



