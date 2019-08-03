
# defining functions ------------------------------------------------------

foo <- function(x) {
  y <- 2 * x
}

foo_return <- function(x) {
  y <- 2 * x
  return(y)
} 

foo_default_arg <- function(x, s = TRUE){
  if(s){
    return(x)
  } else {
    stop("s was FALSE")
  }
}

foo_check_args <- function(x, y) {
  stopifnot(is.numeric(x), is.numeric(y))
  return(x+y)
}

foo_dot <- function(...){
  return(length(...))
}

foo_pipeable <- function(x){

  #do so here
  
  invisible(x)
}

# main script -------------------------------------------------------------
# str + umschalt + r
print(foo(2))
print(foo_return(2))


# conditional execution ---------------------------------------------------

bool <- TRUE
if (bool) {
  print("true")
} else {
  print("false")
}

if(c(T, F)){}

bool2 <- FALSE

if(bool && bool2){
  print("yes")
}

if(bool){
  #
} else if(bool2) {
  #
} else {
  #
}


foo_check_args("d", 4)

foo_dot(c(2,3))

foo_pipeable(c(3,3,2,2))

identical(0L, 0)
dplyr::near(0L, 0)


# enviroment --------------------------------------------------------------

y <- 100
f <- function(x){
  return(x+y)
}

f(2)


foo_default_arg(2)
foo_default_arg(2, s=FALSE)
