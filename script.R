#NEW CONSENSUS 3-EQUATION MODEL
rm(list=ls(all=TRUE))
#data 
#parameter values
A<-1.1
alpha<-1
beta<-1
alpha == beta
gamma<-2
#vectors
#y<-vector(length=20)
#pi<-vector(length=20)
#r<-vector(length=20)

y<-rep(c(0),times=200)
pi<-rep(c(0),times=200)
r<-rep(c(0),times=200)

#initial values
ye<-1
pipowerT<-0.02
y[1]<-ye
pi[1]<-pipowerT
r[1]<-A-ye/gamma
#3 curves
#IS curve (shows the demand-side of the economy)
#y[t]<-(A)-(gamma*r[t-1])
#Phillips curve (shows supply-side of the economy)
#pi[t]<-(pi[t-1])+(alpha*(y[t]-ye))
#Interest rate rule
#r[t]<-((A-ye)/(gamma))+(alpha*beta*(pi[t]))-(pipowerT)/gamma*(1+(alpha^2)*beta)
#plot 3 graphs; inflation rate; interest rate; output over the 20 periods 
#for loop to reflect the negative aggregate demand shock at t=5
t<-seq(1, 20, 0.1)

for(i in t){
  if (i <= 5){
    A <- 1.09
    }
  else {
    A <- 1.1
    }
  y[i]<-A-(gamma*r[t-1])
  pi[i]<-pi[t-1]+alpha*(y[t]-ye)
  r[i]<-(A-ye/gamma)+alpha*beta*(pi[t]-pipowerT)/gamma*(1+(alpha^2)*beta)
}


#table showing data for all 3
matrixname<-paste("Table Results")
assign (matrixname,(round(cbind(y,pi,r), digits=3)))

#3 plots created for endogenous variables y, pi and r for each curve
plot(y, type="l", xlab="Time Period", ylab="IS Curve")
plot(pi, type="l", xlab="Time Period", ylab="Phillips Curve")
plot(r, type="l", xlab="Time Period", ylab="Interest rate rule")



