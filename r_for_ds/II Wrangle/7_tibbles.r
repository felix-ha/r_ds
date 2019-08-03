library(tidyverse)

as_tibble(iris)
as.data.frame(iris)

class(iris)
class(as_tibble(iris))


nycflights13::flights %>%
  View()
class(nycflights13::flights)

#creating tibbles
tibble(
  x = 1:5,
  y = 1,
  z = x ^ 2 + y
)

tb <- tibble(
  `:)` = "smile",
  ` ` = "space",
  `2000` = "number"
)

trib <- tribble(
  ~x, ~y, ~z,
  #--|--|----
  "a", 2, 3.6,
  "b", 1, 8.5
)

#subsetting
df <- tibble(
  x = runif(5),
  y = rnorm(5)
)

x <- df$x
x <- df[["x"]]
x <- df %>% .$x
x <- df %>% .[["x"]]
