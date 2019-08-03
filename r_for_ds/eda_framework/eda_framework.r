library(tidyverse)

?diamonds

df <- diamonds
variables <- colnames(df)
number_variables <- length(variables)


for (variable in variables){
  x_current <- df[[variable]]
  
  unique_values <- df[variable] %>%
    distinct()
  head(unique_values)
  number_unique_values <- count(unique_values)
  
  
  print(paste("univariate analysis for", variable))
  print(paste("class", class(x_current)))
  print(paste("type of", typeof(x_current)))
  print(paste("number of unique values", number_unique_values))
  
  ggplot(mapping = aes(x=x_current)) +
    geom_bar() +
    ggtitle(paste("histogramm of", variable)) + 
    xlab(variable)
  ggsave(paste("data/", variable, ".png", sep=""))


  print("")

}
