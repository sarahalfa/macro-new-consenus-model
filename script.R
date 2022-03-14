

#NEW CONSENSUS 3-EQUATION MODEL

#Libraries (may delete if unnecessary)

library(rmarkdown)

#Data
#Parameter values of A, alpha, beta and gamma 
A <- 1.1
alpha <- 1
beta <- 1
gamma <- 2
#Initial values defined
#pi <- "inflation rate"
# pi^T=0.02 inflation target (uppercase T is thus target)
pi^T==0.02
ye <- 1
y[1] <- ye
pi[1] <- pi^T #may need to change this to pi[1] <- 0.02 in the long run
r[1] <- A-ye/gamma

#Defined t to hold 20 time periods, from 1-20

t <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20)

#Vectors
y<-vector(length=20)
pi<-vector(length=20)
r<-vector(length=20)

#3 curves

#IS curve (shows the demand-side of the economy)

y[t]<-A-gamma*r[t-1]

#Phillips curve (shows supply-side of the economy)

pi[t] <- pi[t-1]+alpha*(y[t]-ye)

#Interest rate rule

r[t] <- (A-ye/gamma)+(alpha*beta*(pi[t]-pi^T)/gamma*(1+(alpha^2)*beta))

#Will need to implement perhaps an if else statement?? for if t=5, then A=1.09

if (t <- 5) {
  A <- 1.09
} else {
  t <- c(1, 2, 3, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20)
  A <- 1.10
}

#Plot 3 graphs; inflation rate; interest rate; output over the 20 periods 

#Table created to include the 2 vectors for endogenous variables

matrixname<-past("Inflation Rate")
assign (matrixname,(round(cbind(y,pi,r), digits=3)))

#2 plots created for endogenous variables

plot(y, type="l", xlab="Period", ylab="Y variable")
plot(pi, type="l", xlab="Period", ylab="Pi variable")
plot(r, type="l", xlab="Period", ylab="R variable")



#Negative aggregate demand shock

#Change of t=5 graph

#Will need to implement perhaps an if else statement?? for if t=5, then A=1.09

if (t <- 5) {
  A <- 1.09
} else {
  t <- c(1, 2, 3, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20)
  A <- 1.10
}


#Inflation Rate Graph

#Table for the vectors of endogenous variables
matrixname<-past("Inflation Rate Graph")
assign (matrixname, (round(cbind(y,pi,r), digits=3)))

#Plots 
plot(y, type="l", xlab="y (output)", ylab="r (real interest rate)")
plot(pi^t, type="l", xlab="y (output)", ylab="pi (inflation target)")

#on the IR graph, there are 3 Phillips Curve's 
pi^t==pi^t+a*(y^t-ye)


