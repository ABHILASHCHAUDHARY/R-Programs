#Question 4: # Define functions for parabola, hyperbola, and ellipse

#parabola function
find_parabola <- function(x, a, b, c) {
  return(a * x^2 + b * x + c)
}

#hyperbola function
find_hyperbola <- function(x, a, b, c) {
  return(sqrt(a^2 * (x - c)^2 - b^2))
}

#ellipse function
find_ellipse <- function(x, a, b, h, k) {
  return(sqrt((1 - ((x - h)^2 / a^2)) * b^2) + k)
}

# Define range for x values
x_range <- seq(-2.5, 2.5, length.out = 100)


# Parameters for the curves
parabola_a <- 1
parabola_b <- 0
parabola_c <- 0

hyperbola_a <- 1
hyperbola_b <- 1
hyperbola_c <- 0

ellipse_a <- 5
ellipse_b <- 4
ellipse_h <- 0
ellipse_k <- 0

# Plotting the curves
plot(x_range, find_parabola(x_range, parabola_a, parabola_b, parabola_c), type = "l", col = "red", xlab = "x", ylab = "y", main = "Conic Curves")
lines(x_range, find_hyperbola(x_range, hyperbola_a, hyperbola_b, hyperbola_c), col = "darkgreen")
lines(x_range, find_ellipse(x_range, ellipse_a, ellipse_b, ellipse_h, ellipse_k), col = "blue")
legend("topleft", legend = c("Parabola", "Hyperbola", "Ellipse"), col = c("darkgreen", "red", "blue"), lty = 1, cex = 0.8)