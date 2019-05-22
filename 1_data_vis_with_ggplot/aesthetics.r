library(tidyverse)

ggplot(data=mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

ggplot(data=mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = class))

ggplot(data=mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

ggplot(data=mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))

ggplot(data=mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")
