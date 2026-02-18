# ############################################################
# ################ BASIC R OBJECT TYPES ######################
# ############################################################

# ############################
# # 1️⃣ VECTORS (Most Important)
# ############################

# # A vector is a single column of data (same type)
# x <- c(5, 10, 15, 20)

# # Access elements
# x[1]        # first element
# x[2:4]      # elements 2 through 4

# # Length
# length(x)

# # Logical indexing
# x[x > 10]   # returns elements greater than 10

# # Combine vectors
# y <- c(1,2,3)
# z <- c(x, y)

# ############################
# # 2️⃣ LISTS
# ############################

# # A list can store different types of objects
# my_list <- list(
#   numbers = c(1,2,3),
#   name = "Jonathan",
#   logical = TRUE
# )

# # Access elements
# my_list$numbers
# my_list[[1]]
# my_list$name

# # Why useful?
# # Lists hold mixed objects (vectors, tables, models, etc.)

# ############################
# # 3️⃣ MATRICES
# ############################

# # Matrix = 2D table (same data type)

# m <- matrix(1:9, nrow=3, byrow=TRUE)

# m[1,2]     # row 1, column 2
# nrow(m)
# ncol(m)

# # Row sums
# rowSums(m)

# # Column sums
# colSums(m)

# ############################
# # 4️⃣ ARRAYS
# ############################

# # Array = multi-dimensional matrix

# a <- array(1:24, dim=c(3,4,2))

# # Access: row, column, layer
# a[1,2,1]

# # Useful for probability tables

# ############################
# # 5️⃣ DATA FRAMES (VERY IMPORTANT)
# ############################

# # Data frame = like Excel table

# df <- data.frame(
#   name = c("A","B","C"),
#   score = c(90,85,88),
#   passed = c(TRUE, TRUE, TRUE)
# )

# # Access column
# df$score
# df[,2]

# # Access row
# df[1,]

# # Structure
# str(df)

# ############################################################
# ################ FACTORS ###################################
# ############################################################

# # Factor = categorical variable

# colors <- factor(c("Red","Blue","Red","Green"))

# levels(colors)
# table(colors)

# # Convert numeric to factor
# x <- c(1,1,2,2,3)
# factor_x <- factor(x)

# # Why important?
# # R treats categorical variables differently than numbers.

# ############################################################
# ################ SORTING ###################################
# ############################################################

# x <- c(8,3,10,1)

# sort(x)              # ascending
# sort(x, decreasing=TRUE)

# # Order gives positions
# order(x)

# # Sort data frame by column
# df[order(df$score), ]

# ############################################################
# ################ SUBSETTING ################################
# ############################################################

# x <- c(5,10,15,20)

# # Remove element
# x[-2]

# # Logical filter
# x[x >= 10]

# # Multiple conditions
# x[x > 5 & x < 20]

# ############################################################
# ################ LOGICAL OPERATORS #########################
# ############################################################

# # >  <  >=  <=  ==  !=
# # & (and)
# # | (or)
# # ! (not)

# x <- c(1,5,10)

# x > 5
# x == 5
# x != 1

# ############################################################
# ################ SEQUENCES #################################
# ############################################################

# 1:10
# seq(0,1,by=0.1)
# rep(5,10)

# ############################################################
# ################ APPLY FUNCTIONS ###########################
# ############################################################

# # Apply function to vector
# mean(x)
# sd(x)

# # Apply function to matrix rows
# apply(m, 1, mean)

# # Apply function to matrix columns
# apply(m, 2, sum)

# ############################################################
# ################ SUMMARY COMMANDS ##########################
# ############################################################

# summary(x)
# table(x)
# unique(x)

# ############################################################
# ################ TYPE CHECKING #############################
# ############################################################

# class(x)
# is.numeric(x)
# is.factor(x)
# is.list(x)
# is.matrix(m)

# ############################################################
# ################ IMPORTANT EXAM USE CASES ##################
# ############################################################

# # Count values in category
# table(colors)

# # Convert counts to probabilities
# prop.table(table(colors))

# # Conditional probability from table
# tab <- table(colors)
# prop.table(tab)

# # Round answers
# round(0.123456,4)

# ############################################################
# ################ END SYNTAX SECTION ########################
# ############################################################


# d___()	density (PDF/PMF)
# p___()	cumulative probability
# q___()	inverse (quantile)
# r___()	random generation

# ############################################################
# ################ BASIC DEFINITIONS #########################
# ############################################################

# # Parameter = describes POPULATION
# # Statistic = describes SAMPLE
# # Population = entire group
# # Sample = subset
# # Variable = measurement
# # Observation = one row/value

# ############################################################
# ################ DESCRIPTIVE STATISTICS ####################
# ############################################################

x <- c(11, 26, 14, 6, 27, 11, 34, 23, 27)

# # 5 number summary
# summary(x)

# min(x)
# quantile(x, 0.25)
# median(x)
# quantile(x, 0.75)
# max(x)

# # IQR
# IQR(x)

# # Standard deviation
# sd(x)

# # Variance
# var(x)

# # Mean
# mean(x)

# ############################################################
# ################ CONTINGENCY TABLES ########################
# ############################################################

# # Create matrix
# table_data <- matrix(c(
#   30,22,3,62,
#   71,39,24,60,
#   63,47,56,46,
#   78,97,80,12,
#   92,78,57,74
# ), nrow=5, byrow=TRUE)

# # Row totals
# rowSums(table_data)

# # Column totals
# colSums(table_data)

# # Grand total
# sum(table_data)

# # Joint probability example
# table_data[5,2] / sum(table_data)

# # Conditional probability example
# table_data[2,] / sum(table_data[2,])

# ############################################################
# ################ CONDITIONAL PROBABILITY ###################
# ############################################################

# # Bayes Theorem Template
# P_A <- 0.19
# P_B_given_A <- 0.29
# P_B_given_notA <- 0.05

# P_notA <- 1 - P_A

# P_B <- P_B_given_A*P_A + P_B_given_notA*P_notA

# P_A_given_B <- (P_B_given_A*P_A)/P_B

# P_A_given_B

# ############################################################
# ################ "AT LEAST ONE" ############################
# ############################################################

# P_A <- 0.68
# P_B <- 0.21
# P_A_and_B <- 0.10

# # At least one
# P_at_least_one <- P_A + P_B - P_A_and_B

# # Only one
# P_only_one <- P_A + P_B - 2*P_A_and_B

# ############################################################
# ################ NORMAL DISTRIBUTION #######################
# ############################################################

mean <- 496
variance <- 1936
sd <- sqrt(variance)

# # P(X > 558)
# 1 - pnorm(558, mean, sd)

# # P(X < value)
# pnorm(500, mean, sd)

# # Between
# pnorm(600, mean, sd) - pnorm(400, mean, sd)

# # Z-score
# z <- (558 - mean)/sd

# # Inverse normal (top 2%)
# mean + qnorm(0.98)*sd

# ############################################################
# ################ UNIFORM DISTRIBUTION ######################
# ############################################################

# a <- 4
# b <- 25

# # P(X < 12)
# (12 - a)/(b - a)

# # Between
# (18 - 9)/(b - a)

# ############################################################
# ################ DISCRETE RANDOM VARIABLE ##################
# ############################################################

# x <- c(6,15,23,26)
# p <- c(0.13,0.29,0.28,0.30)

# # Expected value
# E <- sum(x*p)

# # E[X^2]
# E2 <- sum((x^2)*p)

# # Variance
# Var <- E2 - E^2

# # Standard deviation
# sqrt(Var)

# ############################################################
# ################ FIND MISSING PROBABILITY ##################
# ############################################################

# p <- c(0.12,0.24,NA,0.11,0.27,0.08,0.13)

# p[3] <- 1 - sum(p, na.rm=TRUE)

# p

# ############################################################
# ################ CONTINUOUS PDF ############################
# ############################################################

# # f(x) = k*x^8 on (0,1)

# # Solve for k:
# # ∫0^1 k*x^8 dx = 1
# # k*(1/9) = 1
# k <- 9

# # Probability X >= 0.9626
# 1 - (0.9626^9)

# # Median
# median <- (0.5)^(1/9)
# median

# ############################################################
# ################ EXPECTED VALUE FROM PDF ###################
# ############################################################

# # f(x) = 9*x^8

# # E[X]
# # ∫0^1 x*(9x^8) dx = 9∫x^9 dx = 9*(1/10)
# E <- 9/10

# # E[X^2]
# E2 <- 9*(1/11)

# Var <- E2 - E^2
# sqrt(Var)

# ############################################################
# ################ CDF TO PMF ###############################
# ############################################################

# # Given CDF
# cdf <- c(0.28,0.54,0.78,1)

# pmf <- c(
#   cdf[1],
#   cdf[2]-cdf[1],
#   cdf[3]-cdf[2],
#   cdf[4]-cdf[3]
# )

# pmf

# ############################################################
# ################ PIECEWISE CDF #############################
# ############################################################

# # If F(x) known:

# # P(X > a)
# 1 - F_a

# # P(a < X < b)
# F_b - F_a

# ############################################################
# ################ NORMAL TRANSFORMATION #####################
# ############################################################

# # If Z-score same across two distributions

# z <- (45 - 17.9)/sqrt(4.632)

# # Solve for truck time:
# x_truck <- z*sqrt(0.732) + 8.8

# x_truck

# ############################################################
# ################ ROUNDING #############################
# ############################################################

# round(value, 4)

# ############################################################
# ################ QUICK REFERENCE ############################
# ############################################################

# # pnorm(q, mean, sd) - Calculates the cumulative distribution function (CDF), P(X <= q)
# # qnorm(p, mean, sd) - Calculates the quantile function (inverse CDF), returns value x s.t. P(X <= x) = p
# # dnorm(x, mean, sd) - Calculates the probability density function (PDF), returns the height of the curve at x
qnorm(0.99,2007,232)
# # runif(n,a,b) - Generates n random deviates from a uniform distribution between a and b
# # dunif(x,a,b) - Calculates the density (height) of the uniform distribution at x
# # punif(q,a,b) - Calculates the cumulative probability P(X <= q) for a uniform distribution

# # dbinom(x, size, prob) P(X = x) - Probability mass function: probability of exactly x successes in n trials
# # pbinom(q, size, prob, lower.tail=TRUE) P(X<=q) or lower.tail=FALSE P(x>q) - Cumulative probability of q or fewer successes
# # qbinom(p, size, prob) least successes greater than equal to p P(X < outcome) >= p like outcome for bottom 10 percent - Inverse CDF: quantile function for binomial


# quantile(x, 0.25) #Calculates the first quartile or equivalently the 25th percentile or the 0.25-th quantile

# quantile(x, 0.50) #Calculates the second quartile (the median) or equivalently the 50th percentile or the 0.50-th quantile

# quantile(x, 0.75) #Calculates the third quartile or equivalently the 75th percentile or the 0.75-th quantile

# min(x) #Calculates the minimum observation

# max(x) #Calculates the maximum observation

# mean(x) #Calculates the sample mean or the sample average

# sd(x) #Calculates the sample standard deviation

# var(x) #Calculates the sample variance

# ############################################################
# ################ END OF SCRIPT #############################
# ############################################################

# # 5 number summary
# summary(x)

# min(x)
# quantile(x, 0.25)
# median(x)
# quantile(x, 0.75)
# max(x)

# # IQR
# IQR(x)

# # Standard deviation
# sd(x)

# # Variance
# var(x)

# # Mean
# mean(x)
