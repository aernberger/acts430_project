#install.packages('MASS')
#install.packages('leaps')
#install.packages('lmtest')
library(MASS)
mlr.reduce <- stepAIC(mlr.model)
summary(mlr.reduce)
BIC(mlr.model, mlr.reduce)

#Exhaustive Subset Selection
library(leaps)

X <- as.matrix(newhappiness.clean[, 3:8])
y <- newhappiness.clean$score

mlr.exhaustive <- leaps(X, y)
mlr.exhaustive

#Likelihood Ratio Test
library(lmtest)

lrtest(mlr.reduce, mlr.model)

#Best model candidate -> score = 0.9013 + 0.5257gdp_per_capita            
# + 1.4060social_support + 1.0071healthy_life_expectancy + 1.8532freedom                   