#NEW CONSENSUS 3-EQUATION MODEL

rm(list=ls(all=T))

#data 

#parameter values
A<-1.1 
alpha<-1
beta<-1
gamma<-2

#vectors
y<-vector(length=20)
pi<-vector(length=20)
r<-vector(length=20)

#initial values
ye<-1 #equilibrium output 
pipowerT<-0.02 #inflation target 

y[1]<-1 #output 
pi[1]<-0.02 #inflation rate 
r[1]<-0.05 #real interest rate 

#3 curves
#IS curve (shows the demand-side of the economy)
#y[t]<-(A)-(gamma*r[t-1]) 

#Phillips curve (shows supply-side of the economy)
#pi[t]<-(pi[t-1])+(alpha*(y[t]-ye))
#pi[t]<-pi[t-1]+alpha*(y[t]-1)

#Interest rate rule equation 
#r[t]<-((A-ye)/(gamma))+(alpha*beta*(pi[t]))-(pipowerT)/gamma*(1+(alpha^2)*beta)
#r[t]<-((A*1/2)-1/2)+(((pi[t]-pi[1]))/4)

#plot 3 graphs; inflation rate; interest rate; output over the 20 periods 
#for loop to reflect the negative aggregate demand shock at t=5
for(t in 2:20){
  if(t<5){A<-1.1}else{A<-1.09}
  y[t]<-A-gamma*r[t-1]
  pi[t]<-pi[t-1]+alpha*(y[t]-1)
  r[t]<-((A*1/2)-1/2)+(((pi[t]-pi[1]))/4)
}


#table showing data for all 3 endogenous variables 
matrixname<-paste("Table Results")
assign (matrixname,(round(cbind(y,pi,r), digits=3)))

#3 plots created for endogenous variables y, pi and r for each curve
plot(y, type="l", xlab="Time Period", ylab="IS Curve")
plot(pi, type="l", xlab="Time Period", ylab="Phillips Curve")
plot(r, type="l", xlab="Time Period", ylab="Interest rate rule")






