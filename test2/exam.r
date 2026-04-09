

x = c(3,18,14)
alpha = 1-0.96
x_bar = mean(x)
sd = sd(x)
t = qt(1 - alpha/2, 2)

me = t * (sd/sqrt(3))
x_bar - me
x_bar + me

cat("q4\n\n")

n = 7011904
x = 6
p = 0.001
p_hat = x/n
alpha = 0.02
se = sqrt(p*(1-p)/n)
se
(p_hat - p)
cat("Z")
z = (p_hat - p) / se
z
round(pnorm(z), 4)

cat("q6:")
sd = 1.88
n = 35
T = 1.8109

1- 2*(1-pt(T,n-1))

cat("q7:")
m = 5.7
x_bar = 5.369
sd = 1
alpha = 0.06
n = 42

T = (x_bar-m)/(sd/sqrt(n))
T
pt(T, n-1)

cat("q8:")
D = 2.8
n= 44
sd = 1.4
alpha = 1-0.95

T = qt(1-alpha/2, n-1)
T
me = T * (sd)/sqrt(n) 
D - me
D + me

qnorm(0.975)