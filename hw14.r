

B1 = 0.2
alpha = 0.05
SE1 = 0.11
df = 36
t = qt(1-alpha/2,df)
upper = B1 + t * SE1
lower = B1 - t * SE1

cat("(", lower, ",", upper,")")