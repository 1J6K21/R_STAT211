cat("---------------\n")
n1 = 37
n2 = 37
x1 = 19
sd1 = 0.3
x2 = 21.7
sd2 = 1
alpha = 1-0.87
df = n1+n2-2
sp2 = ((n1-1)*sd1^2 + (n2-1)*sd2^2)/(df)
se = sqrt(sp2*(1/n1 + 1/n2))
t = -qt(alpha/2, df = df)
t
diff = x1-x2
moe = t*se
lower = diff - moe
upper = diff + moe
cat("(", lower, ",", upper, ")\n")
cat("---------------\n")
n1 = 65
x1 = 20
n2 = 60
x2 = 10
alpha = 1-0.91
p1 = x1/n1
p2=x2/n2
se = sqrt(p1*(1-p1)/n1 + (1-p2)*p2/n2)
z = -qnorm(alpha/2)
moe = z*se
diff = p1-p2
lower = diff - moe
upper = diff + moe
cat("(", lower, ",", upper, ")\n")

cat("---------------\n")
n1 = 35
x1 = 2.3
sd1 = 1.2
n = 35
x2 = 1.8
sd2 = 1.1
diff = 0.5; sdd = 0.4
alpha = 0.05

cat(round(qt(1-alpha/2, df = n1-1), 5), "\n")
t = qt(1-alpha/2, df = n1-1)




cat("---------------\n")
n1 = 76/2
n2 = 76/2
x1 = 27; s1 = 15.77
x2 = 15; s2 = 17.86
alpha = 0.05

sp2 = ((n1-1)*s1^2 + (n2-1)*s2^2)/(n1+n2-2)
se = sqrt(sp2*(1/n1 + 1/n2))
t = (x1-x2-0)/se
t
1 - pt(t, 74)
cat("---------------\n")
a = c(712, 559, 722, 502, 616, 723, 895, 711, 874, 853, 851, 909, 645, 788, 821, 751, 865, 509, 535, 798, 585, 877, 863, 775, 710, 521, 623, 725, 742, 656, 680, 810)
b = c(726, 573, 712, 974, 763, 919, 857, 1034, 794, 1019, 914, 610, 605, 597, 590, 758, 954, 596, 636, 944, 771, 875, 629, 586, 741, 569, 871, 553, 644, 774, 550, 813, 682, 870, 1035, 694, 556)
n1 = length(a); x1 = mean(a); sd1 = sd(a)
n2 = length(b); x2 = mean(b); sd2 = sd(b)
diff = x1-x2
sp2 = ((n1-1)*sd1^2 + (n2-1)*sd2^2 ) / (n1+n2-2)
se = sqrt(sp2*(1/n1 + 1/n2))
t = (x1-x2-0)/se
t
df = n1+n2-2
qt(0.05, df = df)
1-pt(t,df=df)
cat("---------------\n")
p1 = 0.93; n1 = 736
p2 = 0.92; n2 = 851
n1*p1;n2*p2
pooled = (n1*p1+n2*p2)/(n1+n2)
se = sqrt(pooled*(1-pooled)*(1/n1 + 1/n2))
z = ((p1-p2)-0)/se
z
pval = 2*(1-pnorm(z))
pval
cat("---------------\n")
n1= 35 #home depot
n2 = 37#lowes
x1 = 703; s1 = sqrt(351)
x2 = 717; s2 = sqrt(78)
df = 70
v = 47.8
diff = x1-x2
se = sqrt((s1^2)/n1+(s2^2)/n2)
t = diff/se
t 
2*pt(t, v)
cat("---------------\n")
n1 = 162; n2 = 193
x1 = 129.31; x2 = 127.63
s1 = 18.366; s2 = 21.147
sp = sqrt(((n1-1)*s1^2 + (n2-1)*s2^2) / (n1+n2-2))
sp
se = sqrt(sp^2 * (1/n1 + 1/n2))
t = qt(0.15/2, df = n1+n2-2)
moe = -t*se
lower = x1-x2 - moe
upper = x1-x2 + moe
cat("(", lower, ",", upper, ")\n")
cat("---------------\n")
n1 = 1406; x1 = 77; p1 = x1/n1
n2 = 1043; x2 = 24; p2 = x2/n2
a = 0.07
diff = p2-p1
se = sqrt(p1*(1-p1)/n1 + p2*(1-p2)/n2)
z = qnorm(1 - a/2)
lower = diff - z*se
upper = diff + z*se
cat("(", lower, ",", upper, ")\n")
cat("---------------\n")
n1 = 395; n2 = 177
x1 = 57; x2 = 47
p1 = x1/n1; p2 = x2/n2
a = 0.02
z = qnorm(1 - a/2)
se = sqrt(p1*(1-p1)/n1 + p2*(1-p2)/n2)
lower = p1-p2 - z*se
upper = p1-p2 + z*se

cat("(", lower, ",", upper, ")\n")

cat("---------------\n")
n1 = 35; x1 =2.3; s1 = 1.2
n2 = 35; x2 = 1.8; s2 = 1.1
diff = 0.5; sdd = 0.4
a = 0.05

t = qt(1-a/2,df = n1+n2-2)
t
se = sdd/sqrt(35)


lower = diff - t*se
upper = diff + t*se
cat("(", lower, ",", upper, ")\n")
