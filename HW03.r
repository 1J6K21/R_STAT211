
nums <- c(9, 9, 24, 29, 44, 13, 28, 17, 42, 26, 11, 20, 26, 38, 7, 54)

"Summary: "
quantile(nums, 0.25)
quantile(nums, 0.5)
quantile(nums, 0.75)

"SD:"
pushups <- c(17, 49, 65, 113)
sd(pushups)

"13:"
data <- c(13, 9, 18, 10, 7, 11, 8, 21, 12, 13, 8, 10, 12, 14, 14, 11, 12, 16, 15, 17, 15, 14, 18, 19, 20, 21, 23, 25, 24, 16, 18, 19)

quantile(data, 0.5)
quantile(data, 0.25)
quantile(data, 0.75)

"14:"
data <- c(10, 12, 12, 14, 14, 16, 16, 20, 22, 23, 23, 24, 25, 25, 27, 30, 35)
quantile(data, 0.5)
quantile(data, 0.25)
quantile(data, 0.75)

#to run run Rscript HW03.r