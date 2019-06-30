library(MASS)
library(tidyverse)
?diamonds

summary(diamonds)

D <- diamonds

table(D$color, D$cut)
prop.table(D$color, D$cut, 1)
