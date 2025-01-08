```R
# Example data
data <- data.frame(x = c(1, 2, 3, NA, 5), y = c(6, 7, NA, 9, 10))

# Incorrect use of na.rm = TRUE in colMeans
result <- colMeans(data, na.rm = TRUE)
print(result)
```