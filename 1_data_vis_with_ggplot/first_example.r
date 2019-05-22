library(tidyverse)

d <- mpg
?mpg

ggplot(data=mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))
