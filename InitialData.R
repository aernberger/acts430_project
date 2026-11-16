#Import the dataset
happiness.dataset <- read.csv("~/Desktop/ACTS430/Project/world_happiness_Update_report_2026.csv")

head(happiness.dataset)
summary(happiness.dataset)

#Don't want rank variable
happiness.data <- subset(happiness.dataset, select = -rank)

head(happiness.data)
summary(happiness.data)