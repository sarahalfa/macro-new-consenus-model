

#Necessary libraries 
library(rmarkdown)
library(r2symbols)
library(tidyquant)

#Data
#Created and defined the parameter variables for the 3 equations 

#A, alpha, beta, y are parameters

A <- 1.1

#Note, alpha and beta have both been fixed at 0.99 thus alpha = beta = 0.99 or 1
sym("alpha")
sym("beta")

y <- 2

pi^T==0.02

pi <- "inflation rate"
pi^T <- "inflation target"

r <- "real interest rate"

ye <- "equilibrium output"

ye <- 1

#Initial values
y[1]<-ye
pi[1]<-pi^T
r <- 0.5
r[1]<- (A-ye)/y

#Defined t to hold 20 time periods, from 1-20
t <- "time"
t <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20)

#3 curves
#IS curve
y(t)=A-yr(t)-1

#Phillips curve
pi(t)=(pi)(t-1)+a(y(t)-y(e))

#Interest rate rule
r(t)=A-y(e)/y+aB(pi(t)-pi(T))/y(1+(a^2)*B)

#Will need to implement perhaps an if else statement?? for if t=5, then A=1.09

if (t <- 5) {
  A <- 1.09
} else {
  A <- 1.10
}

#Plot 3 graphs; inflation rate; interest rate; output over the 20 periods 
#of the simulation (all due to aggregate demand shock)

#Table created to include the 2 vectors for endogenous variables
matrixname<-past("Inflation Rate")
assign (matrixname,(round(cbind(z,y,w), digits=3)))

#2 plots created for endogenous variables
plot(z, type="I", xlab="Period", ylab="Z variable")
plot(y, type="I", xlab="Period", ylab="Y variable")
plot(w, type="I", xlab="Period", ylab="W variable")
