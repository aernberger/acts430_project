#Model Diagnostics
plot(mlr.reduce,1)
plot(mlr.reduce, 2)
plot(mlr.reduce, 3)

par(mfcol = c(1, 2))
plot(mlr.reduce, 4)
plot(mlr.reduce, 5)


#Compare model influence dropping obs 80 - from Cooks Dist
newhappiness.clean[c(80, 142, 143), c("country", "score")]
mlr.noObs <- lm(formula(mlr.reduce), data = newhappiness.clean[-80, ])
coef(mlr.reduce)
coef(mlr.noObs)

summary(mlr.reduce)
summary(mlr.noObs)

#Obs 80 makes an impact mainly in gdp estimate, but since all var are still
#stat significant and the fit is till about the same R^2

#Box-Cox for heteroscedasticity issue
boxcox(mlr.reduce)


#Residuals vs Explanatory Variables
par(mfrow = c(2, 2))

plot(newhappiness.clean$gdp_per_capita, residuals(mlr.reduce),
     xlab = "GDP per Capita", ylab = "Residuals")
abline(h = 0, lty = 2)

plot(newhappiness.clean$social_support, residuals(mlr.reduce),
     xlab = "Social Support", ylab = "Residuals")
abline(h = 0, lty = 2)

plot(newhappiness.clean$healthy_life_expectancy, residuals(mlr.reduce),
     xlab = "Healthy Life Expectancy", ylab = "Residuals")
abline(h = 0, lty = 2)

plot(newhappiness.clean$freedom, residuals(mlr.reduce),
     xlab = "Freedom", ylab = "Residuals")
abline(h = 0, lty = 2)

par(mfrow = c(1, 1))

# Summary: 
# Residuals vs. fitted: Some pattern, may not fully capture relationships
#
# Scale-Location: Possible heteroscedasticity
# 
# Q-Q: Negative-tail departures from normality, some countries predicted
# happiness is higher than actual
# 
# Cook's distance: Venezuela is influential, but not impactful to model perform 
#
# Box-Cox: No strong justification for transforming the response since 1 
# is in 95% confidence interval
# 
# Residuals of explanatory variables: No strong nonlinear patterns
