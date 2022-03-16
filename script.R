
#NEW CONSENSUS 3-EQUATION MODEL

#Data
#Parameter values of A, alpha, beta and gamma 

A <-1.1
alpha <- 1
beta <- 1
gamma <- 2

#Vectors
y <- vector(length=20)
pi <- vector(length=20)
r <- vector(length=20)

#Initial values defined

pi^T==0.02
ye <- 1 
y[1]<- ye
pi[1] <- pi^T==0.02 
r[1] <- A-ye/gamma

#Defined t to hold 20 time periods, from 1-20; this works fine 

t <- "time"
t <- c(1:20)

#3 curves

#IS curve (shows the demand-side of the economy)
#equation works 
y[t]<-A-gamma*r[t-1]


#Phillips curve (shows supply-side of the economy)
#equation works 
pi[t]<-pi[t-1]+alpha*(y[t]-ye)

#Interest rate rule
#equation seems to work
# error of 'no. of items to replace not a multiple of replacement length?

r[t]<-(A-ye/gamma)+alpha*beta*(pi[t])-(pi^T)/gamma*(1+(alpha^2)*beta)

#Plot 3 graphs; inflation rate; interest rate; output over the 20 periods 

#Table showing data for all 3

matrixname<-paste("table")
assign (matrixname,(round(cbind(y,pi,r), digits=3)))
        

#3 plots created for endogenous variables y, pi and r for each curve 
#plots currently showing a zig zag shape; needs to show change at t=5
plot(y, type="l", xlab="Time Period", ylab="IS Curve")

plot(pi, type="l", xlab="Time Period", ylab="Phillips curve") #it seems the Phillips curve does plot correctly; as is a downward slope, but the change at t=5 isnt implemented yet 

plot(r, type="l", xlab="Time Period", ylab="Interest rate rule")


#Permanent negative aggregate demand shock at t=5 
#Results in A declining from 1.1 to 1.09
#For loop implemented to display this 
#Need to ensure that after t=5, the rest of the time periods reflect this permanent shock
for (t in 2:20){
  if (t < 5) {A<-1.09} else {A<-1.1}
  y[t]<-A-(gamma*r[t-1])
  pi[t]<-pi[t-1]+alpha*(y[t]-ye)
  r[t]<-(A-ye/gamma)+alpha*beta*(pi[t])-(pi^T)/gamma*(1+(alpha^2)*beta)
  
}

warnings()
