#Import dataset
newhappiness.dataset <- read.csv("~/Desktop/ACTS430/Project/dataset.csv",
                                 check.names = FALSE)

#Select recent report observations and relevant fields
newhappiness.data <- subset(newhappiness.dataset, Year == 2025,
                            select = c(
                              "Country name",
                              "Life evaluation (3-year average)",
                              "Explained by: Log GDP per capita",
                              "Explained by: Social support",
                              "Explained by: Healthy life expectancy",
                              "Explained by: Freedom to make life choices",
                              "Explained by: Generosity",
                              "Explained by: Perceptions of corruption"
                            ))

head(newhappiness.data)
summary(newhappiness.data)

colSums(is.na(newhappiness.data))
sum(duplicated(newhappiness.data[["Country name"]]))

#Remove countries with missing values
newhappiness.clean <- na.omit(newhappiness.data)

dim(newhappiness.clean)
colSums(is.na(newhappiness.clean))
sum(duplicated(newhappiness.clean[["Country name"]]))
