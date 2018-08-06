#R BASICS
a=1
b=3
c=1
my.vector=c((-b+sqrt(b^2-4*a*c))/(2*a),(-b-sqrt(b^2-4*a*c))/(2*a))
my.vector            
-0.381966*-2.618034
x<-rnorm(100,mean=.5,sd=.3)
x
mean(x)
sd(x)
sd

########
set.seed(476)
x<-rnorm(100)
head(x)
mean(x)
sd(x)
min(x)
max(x)
?set.seed
?rnorm
?head

#Basic operations

2+2
7*17
sqrt(9)
3^3
log(7)
log10(7)

#Precision

sin(pi/2)
pi
options(digits=22)
pi

#Infinity or not defined, and missings

1/0  
2*Inf
-1/0
0/0
c(1,2,3,NA,5)
mean(c(1,2,3,NA,5))

#Assignments to variables

rm(list=ls())

options(digits=7)
x <- 5
x
# x=5 can be used; not recommended
x*x

y <- x+5
ls()
rm(x)
ls()

#Internal help function

?mean    # shorthand for help(mean)
example(mean)
??"fitting linear model"   # shorthand for 
# help.search("fitting linear model")
#Manuals

help.start

#Singles

TRUE
1==2
1
1.2
sqrt(as.complex(-1))
"5"
"abc"

#Vectors

c(1,1.2,pi,exp(1))
c(TRUE,1==2)
c("a","ab","abc")
c("a",5,1==2)

#Factor

gl(2,10, labels=c("male", "female"))
as.factor(c(rep("male",10),rep("female",10)))

#Matrix and arrays

matrix(c(1,2,3,4,5,6)+pi,nrow=2)
matrix(c(1,2,3,4,5,6)+pi,nrow=2)<6
matrix(1:20,4)
array(c(1:24), dim=c(4,3,2))
array(c(1:5),dim=c(2,3))
#Data frame

data.frame(treatment=c("active","active","placebo"), 
           bp=c(80,85,90))
cbind(treatment=c("active","active","placebo"), 
      bp=c(80,85,90))

#Lists

list(a=1,b="abc",c=c(1,2,3),d=list(e=matrix(1:4,2), f=function(x)x^2))

#Simple Functions

square<-function(x){
  return(x*x)
}
square(1:5)

power<-function(x,pow){
  return(x^pow)
}
power(1:5,3)

#Default arguments 

power<-function(x,pow=2){
  return(x^pow)
}
power(1:5)
power(1:5,4)

#Masking functions

c<-function(x,y) x*y
c(2,3)
rm(c)
c(2,3)

#Simple plotting

set.seed(333)
x<-seq(0,6, length=100)
y<-2*x+3+rnorm(100)
plot(x,y)

plot(sin,0,2*pi)

#Function source

source("C:/programdir/script.R")

