library(tidyverse)

#categorial
ggplot(data = diamonds)+
  geom_bar(mapping = aes(x = cut))

diamonds %>%
  count(cut)

#continous
ggplot(data = diamonds) + 
  geom_histogram(mapping = aes(x = carat), binwidth = 0.5)

diamonds %>%
  count(cut_width(carat, 0.5))

smaller <-diamonds %>%
  filter(carat < 3)
ggplot(data = smaller, mapping = aes(x = carat, color = cut))+
  geom_freqpoly(binwidth=0.1)

#outliers
ggplot(diamonds) +
  geom_histogram(mapping = aes(x = y), binwidth = 0.5)+
  coord_cartesian(ylim = c(0, 50))

unusual <- diamonds %>%
  filter(y < 3 | y > 20) %>%
  arrange(y)
unusual
