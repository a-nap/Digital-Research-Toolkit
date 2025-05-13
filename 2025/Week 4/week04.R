# Week 04 -----------------------------------------------------------------
# April 29th 2025

# Check your working directory
getwd()

# Load the necessary packages and data
library(tidyverse)
moses <- read_csv("moses_raw_data.csv")
moses

# Renaming columns
rename(moses,
       ID = MD5.hash.of.participant.s.IP.address,
       ANSWER = Value)

# Selecting columns in 3 ways.
select(moses, ID, ITEM, CONDITION, ANSWER)
select(moses, c(ID, ITEM, CONDITION, ANSWER))
select(moses, c(ID, ITEM:ANSWER))

# Printing values
10 < 1
print(10 < 1)
c(10 < 1)
cat(10 < 1)

# Removing missing values
na.omit(moses)
na.omit(moses$Item)
na.omit(moses[ , "Item"])
na.omit(moses[ , 4])

# Filtering rows
# Only condition 1
filter(moses, CONDITION == 1)
filter(moses, CONDITION %in% 1)
filter(moses, CONDITION >= 1 & CONDITION < 2) # CONDITION is at least 1 but less than 2
# Conditions 1 and 2
filter(moses, CONDITION == 1 | CONDITION == 2) # CONDITION is either 1 or 2.
filter(moses, CONDITION %in% 1:2) # CONDITION is in the set {1, 2}. Here, the set is a range from 1 to 2.
filter(moses, CONDITION < 100) # CONDITION is less than 100
filter(moses, CONDITION %in% c(1, 2)) # Same syntax as above, but also works for character vectors.
# The next function behaves unexpectedly. R tries to recycle values here. It compares CONDITION[1] == 1, CONDITION[2] == 2, etc.
# So this does not check if CONDITION is 1 or 2, and can lead to confusing or incorrect results.
filter(moses, CONDITION == 1:2) 

# Arranging rows
arrange(moses, ITEM)
arrange(moses, ITEM, CONDITION)
arrange(moses, -ID)                 # ID is in decreasing order
arrange(moses, desc(is.na(ANSWER))) # ANSWER is in decreasing order

# Unique values
unique(moses$ANSWER)                        # Show all the different values in ANSWER without repetitions
unique(select(moses, ANSWER))               # Same as above
print(unique(select(moses, ANSWER)), n=Inf) # Same as above, but print everything (= up to a max. value of infinity)

# Data cleanup
# To get all these values, I used a combination of selecting columns, filtering rows, 
# getting unique values, and arranging them in a reasonable way. For the homework
# assignment, you will need to figure out which ITEM ID  
cant_answer <- c("Can't Answer", "Can't answer",
                 "Can't answer the question", "Can't answrer",
                 "Can't be answered", "Can´t answer", "i can't answer", 
                 "can't andwer" , "can't answer" , 
                 "can't answer (Nobel is given by Norway)", "can't asnwer",
                 "can't know", "can`t answer", "can`t asnwer" ,
                 "cant answer", "can´t answ", "can´t answer", "no answer")
