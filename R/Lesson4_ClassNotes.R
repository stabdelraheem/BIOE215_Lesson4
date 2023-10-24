library(tidyverse)

first_last_chr <- function(s) {
  first_chr <- substr(s, 1, 1)
  last_chr <- substr(s, nchar(s), nchar(s))
  ### PAUSE ###
  result <- paste(first_chr, last_chr, sep = "")
  return(result)
}

text <- "Amazing!"
first_last_chr(text)

output <- "Monday"
first_last_chr(output) 
#OR
first_last_chr("Make money") #you don't need to pre-define your argument

my_mean <- function(x, na.rm) { #na.rm = FALSE will set the default of the second parameter to FALSE
  if (na.rm == TRUE) {
    x <- x[!is.na(x)] #OR x <- na.omit(x)
  }
  result <- sum(x)/length(x)
  return(result)
}
my_mean(c(1,2, NA), TRUE)

my_mean(c(1, 5, 9), na.rm = TRUE)
my_mean(c(1, 5, 9), na.rm = FALSE)
my_mean(c(1, NA, 5, 9), na.rm = TRUE)
my_mean(c(1, NA, 5, 9), na.rm = FALSE)



repeat_chr <- function(s, n, separator = "_") {
  n <- n + 1
  repeated <- rep(s, n) # see ?rep
  result <- paste(repeated, collapse = separator)
  return(result)
}

repeat_chr("A", 3, ":")
# Leave `separator` with the default value
repeat_chr("foo", 3)
# Specify the `separator` by name
repeat_chr("foo", 3, separator = " ")
# Specify the `separator` by position
repeat_chr("foo", 3, " ")
