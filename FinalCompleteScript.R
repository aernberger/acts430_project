#Verify working directory and dataset
getwd()
file.exists("dataset.csv")

#Run all project scripts
source("InitialData.R")
source("slr.R")
source("mlr.R")
source("ModelSelection.R")
source("MLRDiag.R")
source("DataVisualization.R")

#Verify final model
summary(mlr.reduce)
