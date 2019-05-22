library(tidyverse)

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy)) 

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv)) 

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv, color = drv)) +
  geom_point(mapping  = aes(x = displ, y = hwy, color = drv))

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = drv)) +
  geom_smooth(mapping = aes(linetype = drv))
              
ggplot(data = mpg, mapping = aes(x= displ, y=hwy, color = drv)) +
  geom_point() + 
  geom_smooth(se = FALSE)

              