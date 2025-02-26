# Lecture 22 APR 2024 -----------------------------------------------------
library(tidyverse)
library(psych)

# Data types
log <- TRUE
int <- 1L
dbl <- 1.0
cpx <- 1+0i
chr <- "one"
nan <- NaN
inf <- Inf
ninf <- -Inf
mis <- NA
ntype <- NULL

# Data type exercises
# = is for assignment; == is for equality
log == int
log == 10
int == dbl 
dbl == cpx 
cpx == chr 
chr == nan 
nan == inf 
inf == ninf
ninf == mis
mis == mis
mis == ntype
ninf == ntype


5L + 2 
3.7 * 3L
99999.0e-1 - 3.3e+3
10 / as.complex(2)
as.character(5) / 5

# Removing from the environment
x <- "bad"
rm(x)

# Moses illusion data
moses <- read_csv("moses.csv")
moses
print(moses)
print(moses, n=Inf)
View(moses)
head(moses)
head(as.data.frame(moses))
tail(as.data.frame(moses), n = 20)
spec(moses)
summary(moses)
describe(moses)
colnames(moses)