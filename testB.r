
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