#1.
#value

#numeric
x <- 1
class(x) #what is x

X <- 5 #X x

#character
y <- "hello world"
class(y)

#bool
t <- TRUE

#complex
x <- 1+2i


#2.
#vector

x <- vector("character", length = 10)
x1 <- 1:4
#vector
x2 <- c(1,2,3,4) 
#element is different
x3 <- c(TRUE, 10, "a") 
x4 <- c("a", "b", "c")

#force transform
as.numeric(x4)
as.logical()
as.character()

#attribute
class(x1)
names(x1) <- c("a", "b", "c", "d")
x1

#3.
#matrix & array

#matrix =  vector + arribute (int: nrow,ncol)

x <- matrix(1:6, nrow = 3, ncol = 2)
x <- matrix(0, nrow = 3, ncol = 2)
attributes(x)

y <- 1:6
dim(y) <- c(2,3)

y2 <- matrix(1:6, nrow = 2, ncol = 3)

rbind(y,y2) #combination
cbind(y,y2)

#array
#dim of array could be more than 2

x <- array(1:24, dim = c(4, 6))
#last 2 num is basic dimension
x <- array(1:24, dim = c(2, 3, 4)) 


#4.
#list

#list contain data type different

l <- list("a", 2, 10L, 3+4i, TRUE)

l2 <- list(a=1, b=2, c=3)

l3 <- list(c(1,2,3), c(4,5,6,7))

x <- matrix(1:6, nrow = 2, ncol = 3)
dimnames(x) <- list(c("a","b"), c("c", "d", "e"))


#5.
#factor

#sequential/nonsequential
#vector of int + label
#ex. male/female vs. 1/2
#used in lm(), glm()

# 5 elements with 2 levels
x <- factor(c("female", "female", "male", "male", "female")) 

#first level is baseline level
y <- factor(c("female", "female", "male", "male", "female"), levels = c("male", "female")) 
table(x)

unclass(x)

class(unclass(x))


#6.
#missing value
#NA/NaN
#NaN belongs to NA
#NA does not belongs to NaN

#NA has type attribute: integer NA, character NA .etc
# is.na()/is.nan()

x<- c(1, NA, 2, NA, 3)
is.na(x)
is.nan(x)

x<- c(1, NaN, 2, NaN, 3)
is.na(x)
is.nan(x)


#7.
#data frame
#store tabular data
#could be seen as list with elements have same length


df <- data.frame(id = c(1,2,3,4), name = c("a","b","c","d"), gender = c(TRUE,TRUE,FALSE,FALSE))
nrow(df)
ncol(df)

df2 <- data.frame(id = c(1,2,3,4), score = c(80,86,90,100))
data.matrix(df2)


#8.
#date and time

#Date
#days between 1970-01-01 and the day of data

#string type
x<- date()
#date type
x2 <- Sys.Date()

x3 <- as.Date("2015-01-01")
x3
class(x3)

weekdays(x3)
months(x3)
quarters(x3)
#between days to integer
julian(x3)

x4 <- as.Date("2016-01-01")

x4-x3
as.numeric(x4-x3)

#time
# POSIXct/POSIXlt ct as integer, and lt as list
# seconds between 1970-01-01 and now

x <- Sys.time()
p <- as.POSIXlt(x)

#delete attribute, has name
names(unclass(p))

p$sec
as.POSIXct(p)

as.Date("2015-01-01")

x1 <- "jan 1, 2015 01:01"
strptime(x1, "%b %d, %Y %H:%M")

x2 <- "Feb 2, 2017"
strptime(x2, "%B %d, %Y")

x2 <- "Feb2,2017"
strptime(x2, "%B%d,%Y")


dates <- c("02/27/92", "02/27/92", "01/14/92", "02/28/92", "02/01/92")
times <- c("23:03:20", "22:29:56", "01:03:30", "18:21:03", "16:56:26")
x <- paste(dates, times)
strptime(x, "%m/%d/%y %H:%M:%S")
