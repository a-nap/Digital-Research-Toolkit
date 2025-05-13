# Week 05 -----------------------------------------------------------------
# May 6th 2025
library(tidyverse)
library(psych)

moses <- read_csv("moses_raw_data.csv")

# Mutating ----------------------------------------------------------------
# Note: the code from line 13 will not work, because I didn't assign the mutated
# data frame anywhere.

mutate(moses, CLASS = TRUE)           # Make a new column
mutate(moses, NUMBER = 1:20596)       # Make a new column
mutate(moses, NUMBERS = NUMBER + 1)   # Calculate a new column from existing one
mutate(moses, NUMBER1 = NUMBER == 1)  # Evaluate column
mutate(moses, NUMBER = as.character(NUMBER)) # Overwrite column
mutate(moses, NUMBER1 = NULL)         # Remove column

# Pipes -------------------------------------------------------------------

moses |>
  rename(ANSWER = Value,
         ID = MD5.hash.of.participant.s.IP.address) |>
  select(ID, ITEM, CONDITION, ANSWER) |>
  na.omit() |>
  filter(CONDITION != 0) |>
  mutate(ITEM = as.numeric(ITEM)) |>
  arrange(ITEM, CONDITION) |>
  unique()

# Joins -------------------------------------------------------------------
moses <- read_csv("moses_clean.csv")
questions <- read_csv("questions.csv")


# If else statements ------------------------------------------------------

moses |>
  mutate(ACCURATE = ifelse(test = CORRECT_ANSWER ==
                             ANSWER, yes = TRUE, no = FALSE))

moses |>
  mutate(ACCURATE = ifelse(CORRECT_ANSWER == ANSWER,
                           "correct", "incorrect"))


# Case when ---------------------------------------------------------------

moses |>
  mutate(CONDITION = case_when(
    CONDITION == '1' ~ 'illusion',
    CONDITION == '2' ~ 'no illusion',
    CONDITION == '100' ~ 'good filler',
    CONDITION == '101' ~ 'bad filler')
  )


moses |>
  # Code for joins and if-else statements omitted for brevity
  mutate(ACCURATE = case_when(
    ANSWER == CORRECT_ANSWER ~ "correct",
    ANSWER != "dont_know" ~ "incorrect",
    TRUE ~ ANSWER)) 

# Task 6
moses.clean |>
  group_by(ITEM, ACCURATE) |>
  summarise(Count = n())
