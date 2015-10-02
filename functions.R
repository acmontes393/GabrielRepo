# define a function which returns the standard deviation of x divided by the square root of x's length (n)
std.error <- function(x) {
  sd(x)/sqrt(length(x))
}