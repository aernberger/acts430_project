#Data Visualization of Dataset
hist(newhappiness.clean$score,
     main = "Distribution of Happiness Scores",
     xlab = "Happiness Score")

#Happiness Score vs Social Support
plot(newhappiness.clean$social_support,
     newhappiness.clean$score,
     xlab = "Social Support",
     ylab = "Happiness Score")

abline(slr.social, col = "red")
