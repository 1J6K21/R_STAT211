
t <- outer(0:2,0:3,function(x,y){(5*x + 5*y)})
t
sum(t)

t2 <- outer(0:1,0:1,function(x,y){(2*x + 4*y)})
t2
sum(t2)

t3 <- outer(0:2,0:3,function(x,y){(1/42)*(2*x + y)})
t4 <- outer(0:2,0:3,function(x,y){(1)*(2*x + y)})
t4
x_2 <- t3[3,3]
x_2
sum(t3)

