# Lecture 29 APR 2024 -----------------------------------------------------
library(tidyverse)
library(psych)

# Moses illusion data
moses <- read_csv("moses.csv")

## Clean up data -----------------------------------------------------------
# Task 1: Rename and drop columns
moses.ren <- 
  rename(moses, 
         ID = MD5.hash.of.participant.s.IP.address,
         ANSWER = Value)

moses.sel <-
  select(moses.ren, c(ITEM, CONDITION, ANSWER, ID, 
                      Label, Parameter))

# Task 2: Remove missing values
moses.na <- na.omit(moses.sel)

# Task 3: Remove unnecessary rows
moses.fil <-
  filter(moses.na, 
         Parameter == "Final", 
         Label != "instructions",
         CONDITION %in% 1:2)

# Task 4: Sort the values
moses.arr <- arrange(moses.fil, ITEM, CONDITION, 
                     desc(ANSWER))

# Task 5: Re-code item number
moses.it <- mutate(moses.arr, ITEM = as.numeric(ITEM))
head(moses.it, n=20)

# Task 6: Look at possible answers
uk <- unique(select(filter(moses.it, ITEM == 2), ANSWER))

## Noisy channel data ------------------------------------------------------
noisy <- read_csv("noisy.csv")

noisy |>
  rename(ID = MD5.hash.of.participant.s.IP.address) |>
  select(ID, 
         Label, 
         PennElementType, 
         Parameter, 
         Value, 
         ITEM, 
         CONDITION, 
         Reading.time, 
         Sentence..or.sentence.MD5.) |>
  view()

# Session information
sessionInfo()
