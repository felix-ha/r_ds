#stat := statistical tranformation 

library(tidyvers)

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x=cut))

ggplot(data = diamonds) + 
  stat_count(mapping = aes(x=cut))

#change the stat of geom
demo <- tribble(
  ~a, ~b,
  "bar_1", 20,
  "bar_2", 30,
  "bar_3", 40
)

ggplot(data = demo) +
  geom_bar(mapping = aes(x=a, y=b), stat = "identity")

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, y = ..prop.., group = 1))

ggplot(data = diamonds) + 
  stat_summary(
    mapping = aes(x = cut, y = depth),
    fun.ymin = min,
    fun.ymax = max,
    fun.y = median)
  )
  
