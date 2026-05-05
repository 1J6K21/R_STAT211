
x = 87
n = 87+209
alpha = 1- 0.83

t = abs(qnorm(alpha/2))
p=x/n
se = sqrt(p*(1-p)/n)
p - se*t
p + se*t


cat("\n\n q4:\n\n")
alpha = 0.05
x_bar = 4.93 - 5.92
sd = 1.98
n = 39
T = (x_bar - 0)/(sd/sqrt(n))
T
pt(T, n-1)

cat("\n\n q5:\n\n")
m = 138
n = 36
x_bar = 133.74
sd = 13.75
alpha = 0.05

T = (x_bar - m)/sd*sqrt(n)
T
2*pt(T, n-1)

cat("q6, right side of :",(25.83-25)/(6/sqrt(13)),"sigmas\n")

cat("\n\n q7:\n\n")
alpha = 1-0.88
me = 0.077
# n = __
z = qnorm(1-alpha/2)
n = z^2 / (me*2)^2

cat("n = ",round(n,0),"z=",z,"\n")

cat("\n\n q8:\n\n")
n = 80
alpha = 1-0.85
U = 1782
L = 1270
me = (U-L)/2
x_bar = L + me

cat("\n\n q9:\n\n")
m = 7
sd = 2
n = 64
x = 7.5
z = (x-m)/sd*sqrt(64)
1-pnorm(z)

cat("\n\n EXAM A:\n\n")
cat("\n\n Q1:\n\n")

x = c(5,16,9)
mean(x)
sd(x)
qt((1-0.92)/2,2)
t.test(x, conf.level = 0.92)



n1 = 248; p1 = 0.7302
n2 = 200; p2 = 0.2015
D = p1-p2
alpha = 1-0.94
z = qnorm(1-alpha/2)
se = sqrt(p1*(1-p1)/n1 + p2*(1-p2)/n2)
lower = D - z*se
upper = D + z*se
cat("(", lower, ",", upper,")")