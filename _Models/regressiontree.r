library(tidyverse)
library(MASS)
library(rpart)
library(rpart.plot)

data <- Boston
?Boston

summary(data)
#y <- data$medv

#ggplot(data = Boston, mapping = aes(x = rm, y = medv))+
  geom_point() 
  
fit <- rpart(medv ~ rm + tax, data = Boston, 
             method = "anova",
             control = rpart.control(cp = 0.001,
                                    # minbucket = 10,
                                     maxdepth = 2))
             
#summary(fit)
#print(fit)

rpart.plot(fit, digits=3)
rpart.rules(fit, cover = FALSE, digits=4)

unseen <- data.frame(rm = c(8,2),
                     tax = c(200, 500))
predict(fit, unseen)
