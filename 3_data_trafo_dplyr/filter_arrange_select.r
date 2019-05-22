#install.packages("nycflights13")
library(nycflights13)
library(tidyverse)

?flights

#filter
jan1 <- filter(flights, month == 1, day == 1)

#arrange rows
arrange(flights, year, month, day)
arrange(flights, desc(arr_delay))

  #nas always at the end
df <- tibble(x = c(5, 2, NA))
arrange(df, x)
arrange(df, desc(x))

#select 
?select
select(flights, year, month, day)
select(flights, year:day)
select(flights, -(year:day))
rename(flights, tail_num = tailnum)
select(flights, time_hour, air_time, everything())

