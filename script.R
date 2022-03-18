
#NEW CONSENSUS 3-EQUATION MODEL

rm(list=ls(all=T))

#Data
#Parameter values of A, alpha, beta and gamma 

t <- 20
A <- 1.1
alpha <- 1
beta <- 1
gamma <- 2

#Vectors
y <- vector(length=20)
pi <- vector(length=20)
r <- vector(length=20)

#Initial values defined

pipowerT <-0.02 #pi when run is identified first at 0.02 
ye <- 1 
y[1]<- ye
pi[1] <- pipowerT 
r[1] <- A-ye/gamma

#3 curves

#IS curve (shows the demand-side of the economy)
#y[t]<-(A)-(gamma*r[t-1])

#Phillips curve (shows supply-side of the economy)
#pi[t]<-(pi[t-1])+(alpha*(y[t]-ye))

#Interest rate rule
#r[t]<-((A-ye)/(gamma))+(alpha*beta*(pi[t]))-(pipowerT)/gamma*(1+(alpha^2)*beta)

#Plot 3 graphs; inflation rate; interest rate; output over the 20 periods 
#For loop created to reflect the negative aggregate demand shock occurring at t=5


for(t in 2:20){
  if (t <= 5){
    A<-1.09
  } 
  else {
    A<-1.1
    }
  y[t]<-A-(gamma*r[t-1])
  pi[t]<-pi[t-1]+alpha*(y[t]-ye)
  r[t]<-(A-ye/gamma)+alpha*beta*(pi[t])-(pipowerT)/gamma*(1+(alpha^2)*beta)
  
}

#Table showing data for all 3
matrixname<-paste("table")
assign (matrixname,(round(cbind(y,pi,r), digits=3)))

#3 plots created for endogenous variables y, pi and r for each curve 
plot(y, type="l", xlab="Time Period", ylab="IS Curve")

plot(pi, type="l", xlab="Time Period", ylab="Phillips curve") 

plot(r, type="l", xlab="Time Period", ylab="Interest rate rule")



