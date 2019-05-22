library(nycflights13)
library(tidyverse)

#mutate: adding columns that are functions of existing functions

flights_sml <- select(flights, 
                     year:day,
                     ends_with("delay"),
                     distance,
                     air_time
                     )
mutate(flights_sml,
       gain = arr_delay - dep_delay,
       speed = distance / air_time * 60)

mutate(flights_sml,
       gain = arr_delay - dep_delay,
       hours = air_time / 60,
       gain_per_hour = gain / hours
)

#only keep new variables
transmute(flights,
          gain = arr_delay - dep_delay,
          hours = air_time / 60,
          gain_per_hour = gain / hours
)
