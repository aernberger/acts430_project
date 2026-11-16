#Rename variables
names(newhappiness.clean) <- c(
  "country",
  "score",
  "gdp_per_capita",
  "social_support",
  "healthy_life_expectancy",
  "freedom",
  "generosity",
  "corruption"
)

names(newhappiness.clean)

#Create a SLR for each of the variables in the dataset
slr.gdp <- lm(score ~ gdp_per_capita, data = newhappiness.clean)
slr.social <- lm(score ~ social_support, data = newhappiness.clean)
slr.health <- lm(score ~ healthy_life_expectancy, data = newhappiness.clean)
slr.freedom <- lm(score ~ freedom, data = newhappiness.clean)
slr.generosity <- lm(score ~ generosity, data = newhappiness.clean)
slr.corruption <- lm(score ~ corruption, data = newhappiness.clean)

summary(slr.gdp)
summary(slr.social)
summary(slr.health)
summary(slr.freedom)
summary(slr.generosity)
summary(slr.corruption)

#Social is strongest predictor, generosity looks like it can be dropped