#install.packages('car')
#Initial mlr model
library(car)
mlr.model <- lm(score ~ gdp_per_capita + social_support +
                 healthy_life_expectancy + freedom +
                 generosity + corruption,
               data = newhappiness.clean)

summary(mlr.model)
vif(mlr.model)