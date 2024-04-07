#create input variables
n=20
p=0.4
x=0:n

#probability mass distribution distribution 
pmd=dbinom(x,size=n,prob=p)
pmd

#Cumulative distribution function
cdd=pbinom(x,size=n,prob=p)
cdd

#ploting graphs 
par(mfrow=c(1,2))

plot(x,pmd,xlab="x",ylab="P(X=x)", main="The Binomial Distribution")
points(x, pmf, col = "blue")
lines(x, pmf, col = "blue")

plot(x,cdd,xlab="x",ylab=expression(P(X<=x)),main="Cumulative Distribution Function")
points(x, cdf, col = "red")
lines(x, cdf, col = "red")


