# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(string_1, string_2){
  length_1 <- nchar(string_1)
  length_2 <- nchar(string_2)
  
  length_1 >= 2 * length_2 | length_2 >= 2 * length_1
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
is_twice_as_long("aa", "b")
is_twice_as_long("a", "bb")
is_twice_as_long("a", "b")


# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(string_1, string_2){
  length_1 <- nchar(string_1)
  length_2 <- nchar(string_2)
  delta <- length_2 - length_1
  if (delta == 0){
    result <- "Your strings are the same length!"
  } else {
    if ( delta > 0){
      result <- paste("Your second string is longer by", delta, "characters")
    } else{
      result <- paste("Your first string is longer by", abs(delta), "characters")
    }
  }
  result
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions

describe_difference("a", "abc")
describe_difference("abc", "a")
describe_difference("abc", "cba")



