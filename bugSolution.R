```R
# Example data
data <- data.frame(x = c(1, 2, 3, NA, 5), y = c(6, 7, NA, 9, 10), z = c(NA,NA,NA,NA,NA))

# Function to handle all NA columns
robustColMeans <- function(data) {
  for (i in 1:ncol(data)) {
    if (all(is.na(data[, i]))) {
      warning(paste("Column", colnames(data)[i], "contains only NAs. Replacing with NA."))
      data[, i] <- NA #Or handle it appropriately based on your needs
    }
  }
  colMeans(data, na.rm = TRUE)
}

result <- robustColMeans(data)
print(result)
```