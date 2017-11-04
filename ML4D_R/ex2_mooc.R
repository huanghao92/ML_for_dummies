
#subsetting

# [] [[]] $
#1. 
#vector
x <- 1:10
x[1]

x[1:5]

x[x>5] #get num above 5 from x

x>5

x[x>5 & x<7]
x[x<3 | x>7]

y <- 1:4
names(y) <- c("a","b","c","d")
y[2]
y["b"] #get from name

#2.
#matrix
x <- matrix(1:6, nrow = 2, ncol = 3)
x[1,2]
x[1,]
x[,1]
x[2,c(1,3)] #get specific elements
class(x[1,2]) #int
x[1,2, drop = FALSE] #get matrix without drop type

#3.
#data frame
x <- data.frame(v1=1:5, v2=6:10, v3=11:15)
x$v3[c(2,4)] <- NA
x[,2]
x[,"v3"]

x[(x$v1<4 & x$v2>=8),]  #get specific row

x[which(x$v1>2),]
?which #search definition

#compare
which(x$v1>2)
x$v1>2

#subset
subset(x,x$v1>2)

#4.
#list
#[[]]/$/[[]][]/[[]][[]]

x <- list(id=1:4, height=170, gender="male")

#get name and value
x[1]
x["id"]

#get value only
x[[1]]
x[["id"]]
x$id

y <- "id"
x[[y]] #return normal value
x$y #return NULL

#subsetting nested elements of a list
x <- list(a = list(1,2,3,4), b = c("星期一"))
x[[1]]
x[[1]][2]
x[[1]][[2]]

x[[c(1,3)]]

#partial matching
l <- list(asdfghj = 1:10)
l$asdfghj
l$a

l[["a"]]
l[["a", exact = FALSE]]

x <- list(asfghj = 1:10, b = 1:2, aaa = 3:5)
x$a #wrong return value


#5.
#missing value

x <- c(1, NA, 2, NA, 3)
is.na(x)

x[!is.na(x)] #get not missing value

x <- c(1, NA, 2, NA, 3)
y <- c("a","b",NA,"c",NA)
z <- complete.cases(x,y) #get bool value of not missing value for both x and y
x[z]

#ex for datasets
library(datasets)
head(airquality) #first six sets

g <- complete.cases(airquality)

airquality[g,][1:10,]


#6.
#vectorized operation

x <- 1:5
y <- 6:10
x+y
x*y
x/y

x <- matrix(1:4, nrow = 2, ncol = 2)
y <- matrix(rep(2,4), nrow = 2, ncol = 2) #replica of 2 for 4 times
x*y #vector mult
x %*% y #matrix mult
