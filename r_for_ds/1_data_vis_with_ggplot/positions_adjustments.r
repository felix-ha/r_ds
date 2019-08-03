library(tidyverse)

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x=cut, color=cut))

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x=cut, fill=cut))

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x=cut, fill=clarity))

ggplot(data = diamonds, 
       mapping = aes(x=cut, fill=clarity)) + 
  geom_bar(alpha = 1/5, position = "identity")

ggplot(data = diamonds, 
       mapping = aes(x=cut, fill=clarity)) + 
  geom_bar(fill=NA, position = "identity")

ggplot(data = diamonds) +
  geom_bar(
    mapping = aes(x = cut, fill = clarity),
    position = "fill"
  )

ggplot(data = diamonds) +
  geom_bar(
    mapping = aes(x = cut, fill = clarity),
    position = "dodge"
  )

ggplot(data = mpg) +
  geom_point(
    mapping = aes(x = displ, y = hwy),
    position = "jitter"
  )

ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) +
  geom_jitter(width = 0.9, height = 0.9)

