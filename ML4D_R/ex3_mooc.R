#function

#1.

#for/while

#lapply: deal with every element in list
str(lapply) #display R object

x <- list(a=1:10, b=c(11,21,31,41,51))
lapply(x,mean) #Apply a Function over a List or Vector

x<- 1:4
lapply(x, runif)
lapply(x, runif, min=0, max=100)

#function
x <- list(a=matrix(1:6,2,3), b=matrix(4:7,2,2))
lapply(x, function(m) m[1,])

#sapply simplify lapply, return vector or matrix if simplify is possible
x <- list(a=1:10, b=c(11,21,31,41,51))
sapply(x,mean) #Apply a Function over a List or Vector
class(sapply(x,mean))

#apply
x <- matrix(1:16, 4, 4)
apply(x,2,mean) #2 is the second dimension
apply(x,2,sum)

#row or column
rowSums(x)
rowMeans(x)
colSums(x)
colMeans(x)

#apply
x <- matrix(rnorm(100),10,10)
apply(x, 1, quantile, probs=c(0.25,0.75))

x <- array(rnorm(2*3*4), c(2,3,4))
apply(x,c(1,2),mean) #get mean of 3rd dimension

#mapply
list(rep(1,4),rep(2,3),rep(3,2),rep(4,1))
mapply(rep, 1:4, 4:1)

s <- function(n, mean, std){
  rnorm(n, mean, std)
}

s(4, 0, 1)

mapply(s, 1:5, 5:1, 2)

#tapply
x <- c(rnorm(5), runif(5), rnorm(5,1))
f <- gl(3,5) #levels

tapply(x, f, mean) #divide x to groups according to f levels and get mean of every groups
tapply(x, f, mean, simplify = FALSE)

#2.
#split
x <- c(rnorm(5), runif(5), rnorm(5,1))
f <- gl(3,5) #levels
split(x, f)

lapply(split(x,f),mean)

s <- split(airquality, airquality$Month)
table(airquality$Month)

#
lapply(s,function(x) colMeans(x[,c("Ozone","Wind","Temp")]))
sapply(s,function(x) colMeans(x[,c("Ozone","Wind","Temp")]))
sapply(s,function(x) colMeans(x[,c("Ozone","Wind","Temp")],na.rm = TRUE))

#3.
#sort and order
x <- data.frame(v1=1:5, v2=c(10,7,9,6,8), v3=11:15, v4=c(1,1,2,2,1))

sort(x$v2)
sort(x$v2,decreasing = TRUE)

order(x$v2) #return num of data for sort
x[order(x$v2),] #reorder

x[order(x$v4,x$v2),] #according to v4 and v2, v4 is primary
x[order(x$v4,x$v2,decreasing = TRUE),]

#summarize data
head(airquality,10)
tail(airquality)

summary(airquality)
str(airquality)
table(airquality$Ozone, useNA = "ifany")
table(airquality$Month,airquality$Day)

any(is.na(airquality$Ozone))
sum(is.na(airquality$Ozone))
all(airquality$Month<12)

titanic <- as.data.frame(Titanic) #trans to frame
head(titanic)


x <- xtabs(Freq ~ Class +Age, data = titanic)
ftable(x)

object.size(airquality)
print(object.size(airquality), units="Kb")
