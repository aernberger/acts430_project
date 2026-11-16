#Initial mlr model
mlr.model <- lm(score ~ gdp_per_capita + social_support +
                 healthy_life_expectancy + freedom +
                 generosity + corruption,
               data = newhappiness.clean)

summary(mlr.model)