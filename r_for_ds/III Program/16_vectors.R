library(tidyverse)


# vectors -----------------------------------------------------------------

# logical
1:10 %% 3 == 0
typeof(1:10 %% 3 == 0)

# numeric
x <- c(-1, 0, 1) / 0
x
typeof(x)
is.finite(x)
is.infinite(x)
is.na(x)
is.nan(x)

#coercion
x <- sample(x=20, size=100, replace = TRUE)
y <- x > 10
sum(y)
mean(y)

# most complex time wins
typeof(c(2, "asdf"))
typeof(c(2L, 2))

#check type is_*
library(purrr)
is_numeric(x)

#scalars and recycling rules
1:10
1:10 + 1:2

1:10 + 1:3

tibble(x = 1:4, y = 1:2)
tibble(x = 1:4, y = rep(1:2,2))
tibble(x = 1:4, y = rep(1:2, each = 2)) 

#naming
c(a = 2, b = 2.2)
set_names(1:3, c("a", "b", "c"))


#subseting
x <- 1:10
x[4]
x[3:7]
x[-1]
x[c(-1, -10)]
x[c(1,2)]
x[1:10 %% 3 == 0]

x <- c(10, 2, NA)
x[!is.na(x)]

x <- c(a=2, b=4, f=56)
x[c("f", "a")]



# lists -------------------------------------------------------------------


