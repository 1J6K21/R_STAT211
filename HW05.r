#Unfair coin | P(Head) = 3P(Tail)
#Thus P(Head) = 0.75

# P(X = 1 successes)
#Iflipped 3 times, what is the probability of getting exactly 1 head?
b <- dbinom(1, size = 3, prob = 0.75)
b

#If flipped 5 times, what is the probability of getting exactly 2 tails?
b <- dbinom(2, 5, 0.25)
b

custom_pdf <- function(x){ ifelse(x > 0 & x < 1,(6*x**5+20*x**4)/5,0)}
custom_cdf <- function(q){
    sapply(q, function(val) integrate(custom_pdf, lower = 0, upper = val)$value)
}

"custom_cdf is "
custom_cdf(0.9)

boards <- c(0,1,2,3,4,5,6)


ans <- ((9/4 * (9)**4 + 2*(9)**3 + 3/2*(9)**2 ) - (9/4 * (6)**4 + 2*(6)**3 + 3/2*(6)**2))/2340
ans

c_phone <- dbinom(5, 7, 0.3)
c_phone

# P(X > 4) = P(X >= 5)
c_phone <- pbinom(4, 7, 0.3, lower.tail = FALSE)
c_phone
#1-P(X<=4)
c_phone <- 1-pbinom(4, 7, 0.3)
c_phone

c_phone <- pbinom(8, 20, 0.3, lower.tail = FALSE)
c_phone 