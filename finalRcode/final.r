n1 = 40;x1=19.6;s1=2.5
n2 = 33; x2 = 20.2; s2 = 7.9

df = (s1^2/n1 + s2^2/n2)^2/((s1^2/n1)^2/(n1-1) + (s2^2/n2)^2/(n2-1))
alpha = 1-0.86
t = qt(1-alpha/2, df)
se = sqrt((s1^2/n1)^2 + (s2^2/n2)^2)
lower = (x1-x2) - t*se
upper = (x1-x2) + t*se
lower
upper

###########


m = 397; s = sqrt(1849)
s
z = (501-m)/s
z
1-pnorm(z)

###########

n = 33
D = 4.6
SD = 2
alpha = 1-0.95

t = qt(1-alpha/2, df=n-1)
lower = D - t*SD
upper = D + t*SD
cat("(",lower,",",upper,")")

#########
m = 4.06
n = 49
x = 3.9
s = 1.75
alpha = 0.093
cat("\n")
t= (3.9-4.06)/(s/sqrt(n))
pt(t,n-1)
#####

x = c(8,19,12)
alpha = 1-0.9
m = mean(x)
s = sd(x)

m;s;
t=qt(1-alpha/2,df=2)
lower = m - t*s/sqrt(3)
upper = m + t*s/sqrt(3)
cat("(",lower,",",upper,")","\n")

####
n1 = 31;n2=34
m1 = 704; v1 = 229;
m2 = 717; v2 = 200;
D = m1-m2
se = sqrt(v1/n1 + v2/n2)
t = D/se
df = (v1/n1 + v2/n2)^2/((v1/n1)^2/(n1-1) + (v2/n2)^2/(n2-1))
pt(t, df)

###

x = 506.52
alpha = 0.05
t=qt(1-alpha/2,df=30)
se = 10.1*15.2
lower = x - t*se
upper = x + t*se
cat("(",lower,",",upper,")","\n")

###
alpha = 0.09
z = qnorm(1-alpha/2)
z
L = 2*0.09
z^2/L^2

###
n1 = 311; n2 = 321
x1 = 109; x3 = 70
alpha = 0.05
p1 = x1/n1;p2 = x2/n2;
p1-p2
se = sqrt(p1*(1-p1)/n1 + p2*(1-p2)/n2)
se
T = (p1-p2)/se
T
2*(1-pnorm(T)/2)
###

n1=161;n2=193
m1=129.41; m2 = 127.4
s1 = 18.476; s2 = 21.612
sp = sqrt(((n1-1)*s1^2 + (n2-1)*s2^2)/(n1+n2-2))
sp
alpha = 0.1
D = m1-m2
t = qt(1-alpha/2, n1+n2-2)
se = sp*sqrt(1/n1 + 1/n2)
lower = D - t*se
upper = D + t*se
cat("(",lower,",",upper,")","\n")

###
x = 0.23
t=qt(1-0.05/2,35)
se = 1.55/sqrt((36)*0.15^2)
x-t*se
x+t*se

se = 0.045*29

8.61 - t*se
8.61 + t*se