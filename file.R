random_draws_100 <- function(col1, col2_mean, col2_var){
  first_column <- seq(from = 0, to = col1)
  
  second_column <- rnorm(n = col1 + 1, mean = col2_mean, sd = sqrt(col2_var))
  
  df <- data.frame(first_column, second_column)
  
  write.csv(df, file = ("assignment5_file.csv"), row.names = FALSE)
}

random_draws_100(100, 0, 0.001)
