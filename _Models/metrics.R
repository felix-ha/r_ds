library(mlbench)
library(MLmetrics)


data(cars)


# malignant = positive
# benign = negativ

# Wisconsin Breast Cancer Database
data(BreastCancer)
dim(BreastCancer)
levels(BreastCancer$Class)
head(BreastCancer)
summary(BreastCancer)

logreg <- glm(formula = Class ~ .,
              family = binomial(link = "logit"), data = BreastCancer)
logreg$fitted.values

pred <- ifelse(logreg$fitted.values < 0.5, 0, 1)

Accuracy(y_pred = pred, y_true = BreastCancer$Class)
