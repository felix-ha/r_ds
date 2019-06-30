library(magrittr)

diamonds <- ggplot2::diamonds
diamonds2 <- diamonds %>%
  dplyr::mutate(price_per_carat = price / carat)

pryr::object_size(diamonds)
pryr::object_size(diamonds2)
pryr::object_size(diamonds, diamonds2)

#does only work in current env, pipe live in own enviroment
assign("x", 10)
"x" %>% assign(100)

env <- environment()
"x" %>% assign(100, envir = env)

#other operator
#tee pipe
rnorm(100) %>%
  matrix(ncol = 2) %T>%
  plot() %>%
  str()

#"explodes" the variables in a dataframe 
cor(mtcars$disp, mtcars$mpg)
mtcars %$%
  cor(disp, mpg)

#assing
mtcars <- mtcars %>%
  transform(cyl = cyl * 2)
mtcars %<>% transform(cyl = cyl * 2)
