cat("-------\n")
x = 72 + qnorm(0.02)*(6/4)
B = 1 - pnorm((x-69)/(6/4))
P = 1 - B

cat("-------\n")
x = 4.06
y = 5
n = 46
sd = 0.97
a = 0.09
m = 0.2
z = 4.26

x_crit = 4.06 + qnorm(1 - a/2)*(sd/sqrt(n))
P = 1-pnorm((x_crit-4.26)/(sd/sqrt(n)))
P


cat("-------\n")

m0 = 4.13
n = 57
sd = 0.98
a = 0.07
# Ha testing if decreased. finding a 0.2 difference -> 4.13-.2 = 3.93
m1 = 3.93
se = sd/sqrt(n)
#subtracted but qnorm already negative
# alternative qnorm(a, mean=m0, sd = se)
x_crit = m0 + qnorm(a)*se
# P = pnorm(x_crit, mean=m1, sd =se)
P = pnorm((x_crit-m1)/(se))
P
cat("-------\n")

p0 = 0.9
a = 0.02
n = 400
p1 = 0.84
se = sqrt((0.9)*(0.1)/(400))
x_crit = p0 + qnorm(a/2)*se

se_a = sqrt((p1 * (1 - p1)) / n)
power = pnorm(x_crit, mean=p1, sd = se_a)
print(paste("Part (c) Power:", round(power, 4)))
print(paste("Part (d) Beta:", round(1-power, 4)))
print(paste("Part (e) crit:", round(qnorm(a/2, mean = p0, sd = se), 7))) # marked wrong?
cat("-------\n")
m0 = 500
sd = 40
n = 25
a = 0.05
m1 = 520
se = sd/sqrt(n)
x_crit = m0 + qnorm(1 - a)*se
1 - pnorm(x_crit, mean = m1, sd = se)
pnorm(x_crit, mean = m1, sd = se)
(x_crit - m0)/se 
#all correct
cat("-------\n")
n = 118
sd = 131
a = 0.15
m0 = 6175
m1 = 6149
se = sd/sqrt(n)
x_crit = m0 + qnorm(a)*se
P = pnorm(x_crit, mean = m1, sd = se)
P
cat("-------\n")
m0 = 100
sd = 8
n = 16
a = 0.05
m1 = 106
se = sd/sqrt(n)
lower_x_crit = m0 + qnorm(a/2)*se
upper_x_crit = m0 + qnorm(1 - a/2)*se

P = pnorm(lower_x_crit, mean = m1, sd = se) + (1- pnorm(upper_x_crit, m1, se)) # two tailed, also counts 
B = 1-P
crit_constant = qnorm(1 - a/2)

P
B
crit_constant
cat("-------\n")

m0 = 4.17
n = 41
sd = 1.15
a = 0.08
#increase 0.2 diff
m1 = 4.37
se = sd/sqrt(n)
qnorm(1-a, m0, se)
x_crit = qnorm(1-a, m0, se)
P = 1- pnorm(x_crit, m1, se)
P