install.packages("alr4")
library(alr4)
effectsTheme(lattice)
install.packages("car")
library(car)

data("BigMac2003")
head(BigMac2003)
tail(BigMac2003)

dim(BigMac2003)

attach(BigMac2003)
BigMac
detach(BigMac2003)
BigMac2003$BigMac
## Atomic Operator

rownames(BigMac2003)

BigMac2003[41,]
BigMac2003[,1]

BigMac2003


attach(BigMac2003)
hist(TeachNI, main="Teachers Net Income (in $1000s)")

hist(TeachNI,breaks=15, main="Teachers Net Income (in $1000's)")

boxplot(TeachNI, main="A boxplot of Teachers Net Income (in $1000's)")

summary(BigMac2003)

mean(TeachNI)
##Standard Deviation
sd(TeachNI)
#Variance
sd(TeachNI)^2
var(TeachNI)

## p calculates the probability in the upper and lower tails
## q calculates the quantiles

pnorm(5,mean=1,sd=3,lower.tail=FALSE)

pnorm(-2)

##Probability is not a percentage##

qnorm(.025,mean=0,sd=1,lower.tail=FALSE)
qnorm(.975,mean=0,sd=1)


## Classes talk about what the function returns

class(2)
mode(2)
class(TRUE)
mode(TRUE)
class("Hello")
mode("Hello")

Y<-runif(10)
X<-runif(10)

class(Y)
mode(Y)
class(mean(Y))
mode(mean)

##lm - a function that we would use to run linier regression in R. When we look at the mode and class of the result we see...

mode(lm(Y~X))
class(lm(Y~X))

library(alr4)
str(salary)

str(BigMac2003)
is.numeric
as.numeric

## Vectors->straight line of data / no structure
##Matrices->columns are observations and rows (excel spreadsheet) must have all of the same type of variable (number or character)
##Lists->most robust piece of storage but takes up a lot of memory
##DataFrames->stores like a list, prints like a matrix... 

A<-matrix(1:9, nrow=3,ncol=3, byrow=TRUE)
A
B<-matrix(1:9, nrow=3,ncol=3, byrow=FALSE)
B

is.matrix(A)
is.matrix(BigMac2003)

t(A)

## %*% does matrix multiplication
## * -> multiplication
A%*%A
A*A
A-A
A-B

is.data.frame(BigMac2003)
names(BigMac2003)

BigMac2003$BigMac2003
MyList<-list(A=1:9,B=2:5)
MyList

names(MyList)
MyList$A

MyList[[1]][1]
MyList[[1]][2]
MyList[[2]]

MyList[[1]]

Data<-data.frame(x1=c(1,3,NA,4,5), x2=c(NA,NA,"red","green","blue"))
Data

is.na(Data$x1)
any(is.na(Data$x1))

na.omit(Data$x1)
na.omit(Data$x2)
na.omit(Data)

mean(Data$x1)
mean(na.omit(Data$x1))

set.seed(10)
Out1<-sample(1:20,5,replace=FALSE)
Out1

set.seed(10)
M<-runif(10,0,1)
M

## apply
## index 1 means ros, 2 means columns

apply(BigMac2003,2, mean)

## tapply
## apply this funtion using "this factor" to split
## tapply(data, variable, function)

tapply(salary$salary, salary$sex, mean)
tapply(salary$salary, salary$sex, summary)

split(salary$salary, salary$sex)

## lapply takes a list and applies a function to each peice of a list ($A)
## sapply applies a function to every piece of a list and creates a vector

lapply(MyList,mean)
sapply(MyList,mean)

library(alr4)
data(BigMac2003)
head(BigMac2003)

## apply(Mymatrix, index, function)
## For instance we may want to compare the mean price of Bread, Rice, and BigMac. We can calculate this in multiple ways but for this discussion we will on focus on using the apply function. The use of the apply function looks like
## where
#MyMatrix is your data matrix or data frame
#index refers to either the columns or rows. This argument only responds to 1 (rows) or 2 (columns). Think of this as a row by column statement. We always say rows first and columns second.
#function refers to the function you want to apply to either the rows or the columns. This can either be a pre-programmed (cookbook) function in R OR you can write your own function to place here. Note the argument of this function needs to be a data vector or the apply function becomes more complex.
#Now to see how it applies to the BigMac2003 data we can use the code

apply(BigMac2003,2, mean)

##for -> iterate over a set (through an index) and calculate something inside of it

Sum=0
for(i in 1:20)
Sum=Sum+i
Sum

sum(1:20)

##while statements help your algorithms stop

sum=(1:20)
Sum=0
iter=0
while(Sum<100){
iter=iter+1
Sum=Sum+iter
}
Sum
iter
##^^ this code did not perform as Brad demonstrated, look into this!

###Bootstrapping

#Statistical inference is the process of drawing conclusions about the entire population based on the information in the sample. 
#The whole idea is we want to use statistics from our sample to make estimates (and draw conclusions) about parameters from our population. 
#Statistical inference has two common components: confidence intervals and hypothesis tests. 
#To understand how to use bootstrap and randomization testing methods, we first need to really understand what statistical inference is and some of the definitions that come with it. 
#Below are some examples.

#Sample Mean → True Mean
#Sample Sd → True Sd
#Sample Min → True Minimum
#Sample Max → True Max
#Sample Regression Line → True Mean Function

###Parameter
###Sampling Distribution

###Bootstrapping




