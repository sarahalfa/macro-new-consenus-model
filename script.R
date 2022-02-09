
#Need to set seed initially
set.seed(1)

#Data
#Create + define variables 
A==1.1
a==B==1
y==2
pi(t)==0.02
y(e)==1
y(t)==y(e)
y(t=1)==pi(t)
pi(t=1)==pi(T)
r(t=1)==A-y(e)/y
r==0.5
#Create variables for time series to have 20 time periods
#figure out how to fix this so that t can hold from numbers 1-20
t <- a(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)

#3 curves

#IS curve
y(t)=A-yr(t)-1

#Phillips curve
pi(t)=(pi)(t-1)+a(y(t)-y(e))

#Interest rate rule
r(t)=A-y(e)/y+aB(pi(t)-pi(T))/y(1+(a^2)*B)

#Will need to implement perhaps an if else statement?? for if t=5, then A=1.09

#Plot 3 graphs; inflation rate; interest rate; output over the 20 periods of the simulation (all due to aggregate demand shock)
