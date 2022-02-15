
#Inflation Rate Graph

#Table for the vectors of endogenous variables
matrixname<-past("Inflation Rate Graph")
assign (matrixname, (round(cbind(y,pi,r), digits=3)))

#Plots 
plot(y, type="l", xlab="y (output)", ylab="r (real interest rate)")

#on the IR graph, there are 3 Phillips Curve's * implement those for now

pi^t==pi^t+a*(y^t-ye)
