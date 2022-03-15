

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
y <- x
y[e] <- 1
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

y[t]<-A-(gamma*r[t-1])

#Phillips curve (shows supply-side of the economy)

pi[t]<-pi[t-1]+alpha*(y[t]-ye)

#Interest rate rule

r[t]<-r[1]*(alpha*beta*(pi[t]-pi^T)/gamma*(1+(alpha^2)*beta))
            
#Plot 3 graphs; inflation rate; interest rate; output over the 20 periods 

#Table created to include the 2 vectors for endogenous variables 
#i dont think this isn't needed for AS2 - ask prof

matrixname<-("table")
assign (matrixname,(round(cbind(y,pi,r), digits=3)))

#3 plots created for endogenous variables y, pi and r for each curve 

plot(y, type="l", xlab="Time Period", ylab="IS Curve")
plot(pi, type="l", xlab="Time Period", ylab="Phillips curve")
plot(r, type="l", xlab="Time Period", ylab="Interest rate rule")



#Negative aggregate demand shock
#Change of t=5 graph
#Implement a for loop to show that when if t=5, A declines to A=1.09

for (t in 2:20){
  if (t < 5) {A<-1.09} else {A<-1.1}
  y[t]<-A-(gamma*r[t-1])
  pi[t]<-pi[t-1]+alpha*(y[t]-ye)
  r[t]<-r[1]*(alpha*beta*(pi[t]-pi^T)/gamma*(1+(alpha^2)*beta))
  
}



warnings()
