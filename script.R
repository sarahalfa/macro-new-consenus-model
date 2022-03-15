
#NEW CONSENSUS 3-EQUATION MODEL

#Data
#Parameter values of A, alpha, beta and gamma 

A<-1.1
alpha <- 1
beta <- 1
gamma <- 2

#Initial values defined

# pi^T=0.02 inflation target (uppercase T is thus target)
T <- "target"
pi <- "inflation rate"


pi[T]<-0.02 #this works but unsure if the syntax is correct??

pi^T=="inflation target"
pi^T==0.02 #prints false which is a concern; needs to show in env

e <- "equilibrium"
y[e] <- 1 
y[1] <- y[e]
pi[1] <- pi^T #may need to change this to pi[1] <- 0.02 in the long run
r[1] <- A-ye/gamma

#Defined t to hold 20 time periods, from 1-20; this works fine 

t <- "time"
t <- c(1:20)

#3 curves

#IS curve (shows the demand-side of the economy)

y[t]<-A-gamma*r[t-1]


#Phillips curve (shows supply-side of the economy)

pi[t]<-pi[t-1]+alpha*(y[t]-y[e])

#Interest rate rule

r[t]<- A-ye/gamma+alpha*beta*pi[t]-(pi^T)/gamma*(1+(alpha^2)*beta)

r[t]<-r[1]+alpha*beta*pi[t]-pi[T]/gamma*(1+alpha^2*beta)

#Plot 3 graphs; inflation rate; interest rate; output over the 20 periods 

#Table showing data for all 3

matrixname<-paste("table")
assign (matrixname,(round(cbind(y,pi,r), digits=3)))
        

#3 plots created for endogenous variables y, pi and r for each curve 

plot(y, type="l", xlab="Time Period", ylab="IS Curve")
plot(pi, type="l", xlab="Time Period", ylab="Phillips curve")
plot(r, type="l", xlab="Time Period", ylab="Interest rate rule")


#Vectors
y<- vector(length=20)
pi<- vector(length=20)
r<- vector(length=20)


#Permanent negative aggregate demand shock at t=5 
#Results in A declining from 1.1 to 1.09
#For loop implemented to display this 
#Need to ensure that after t=5, the rest of the time periods reflect this permanent shock
for (t in 2:20){
  if (t < 5) {A<-1.09} else {A<-1.1}
  y[t]<-A-(gamma*r[t-1])
  pi[t]<-pi[t-1]+alpha*(y[t]-ye)
  r[t]<-r[1]+alpha*beta*pi[t]-pi[T]/gamma*(1+alpha^2*beta)
  
  
  
  
}




