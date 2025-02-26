# Lecture 6 May 2024 ------------------------------------------------------
library(tidyverse)
library(psych)

## Homework ---------------------------------------------------------------

moses <- read_csv("moses.csv")

moses |>
  rename(ID = MD5.hash.of.participant.s.IP.address,
         ANSWER = Value) |>
  select(ITEM, CONDITION, ANSWER, ID, Label, Parameter) |>
  na.omit() |>
  filter(Parameter == "Final", 
         Label != "instructions",
         CONDITION%in%1:2) |>
  arrange(ITEM, CONDITION, desc(ANSWER)) |>
  mutate(ITEM = as.numeric(ITEM))



moses |> select(RESPONSE) |> arrange(RESPONSE) |> unique()
dont.know <- c("Don't Know", "Don't know", "don't knoe", "don't know", 
               "don`t know", "dont know", "don´t know", "i don't know",
               "Not sure", "no idea", "forgotten", "I do not know",
               "I don't know")

moses |> filter(ITEM == 108) |> select(RESPONSE) |> unique()
printing <- c("Print", "printer", "Printing", "Printing books", "printing press", 
              "press", "Press", "letter press", "letterpress", "Letterpressing",
              "inventing printing", "inventing the book press/his bibles", 
              "finding a way to print books", "for inventing the pressing machine", 
              "Drucka", "Book print", "book printing", "bookpress", "Buchdruck",
              "the book printer")



noisy <- read_csv("noisy.csv")
noisy.rt <- 
  noisy |>
  rename(ID = "MD5.hash.of.participant.s.IP.address",
         SENTENCE = "Sentence..or.sentence.MD5.") |>
  mutate(RT = as.numeric(Reading.time)) |>
  filter(Label == "experiment",
         PennElementType != "Scale",
         PennElementType != "TextInput",
         Reading.time != "NULL",
         RT > 80 & RT < 2000) |>
  select(ID, ITEM, CONDITION, SENTENCE, RT, Parameter) |>
  na.omit()

noisy.aj <-
  noisy |>
  filter(Label == "experiment",
         PennElementType == "Scale") |>
         mutate(RATING = as.numeric(Value),
                ID = "MD5.hash.of.participant.s.IP.address") |>
         select(ID, ITEM, CONDITION, RATING) |>
          na.omit()


## Naming -----------------------------------------------------------------

ueOd2FNRGAP0dRopq4OqU <- 1:10
ueOd2FNRGAPOdRopq4OqU <- c("Passport", "ID", "Driver's license")
ueOb2FNRGAPOdRopq4OqU <- FALSE
ueOd2FNRGAPOdRopq4OqU <- 5L

He_just.kept_talking.in.one.long_incredibly.unbroken.sentence.moving_from.topic_to.topic <- 1

## Joining, cleaning, grouping, summarizing -------------------------------
moses <- read_csv("moses_clean.csv") # Look, I overwrote the previous 'moses' variable!
questions <- read_csv("questions.csv")

# Task 1
data_with_answers <-
moses |>
  inner_join(questions, by=c("ITEM", "CONDITION", "LIST")) |>
  select(ITEM, CONDITION, ID, ANSWER, CORRECT_ANSWER, LIST) 

moses |>
  full_join(questions, by=c("ITEM", "CONDITION", "LIST")) |>
  select(ITEM, CONDITION, ID, ANSWER, CORRECT_ANSWER, LIST) 

moses |>
  merge(questions, by=c("ITEM", "CONDITION", "LIST")) |>
  select(ITEM, CONDITION, ID, ANSWER, CORRECT_ANSWER, LIST) 

# Task 2
moses |>
  inner_join(questions, by=c("ITEM", "CONDITION", "LIST")) |>
  select(ITEM, CONDITION, ID, ANSWER, CORRECT_ANSWER, LIST) |>
  mutate(ACCURATE = ANSWER == CORRECT_ANSWER)

# Task 3
moses |>
  inner_join(questions, by=c("ITEM", "CONDITION", "LIST")) |>
  select(ITEM, CONDITION, ID, ANSWER, CORRECT_ANSWER, LIST) |>
  mutate(ACCURATE = ifelse(CORRECT_ANSWER == ANSWER,
                           yes = "correct",
                           no = ifelse(ANSWER == "dont_know",
                                       yes = "dont_know",
                                       no = "incorrect"))) 
  
# Task 4
moses |>
  inner_join(questions, by=c("ITEM", "CONDITION", "LIST")) |>
  select(ITEM, CONDITION, ID, ANSWER, CORRECT_ANSWER, LIST) |>
  mutate(ACCURATE = ifelse(CORRECT_ANSWER == ANSWER,
                           yes = "correct",
                           no = ifelse(ANSWER == "dont_know",
                                       yes = "dont_know",
                                       no = "incorrect")),
         CONDITION = case_when(CONDITION == '1' ~ 'illusion',
                               CONDITION == '2' ~ 'no illusion',
                               CONDITION == '100' ~ 'good filler',
                               CONDITION == '101' ~ 'bad filler'))

# Task 5
moses |>
  full_join(questions, by=c("ITEM", "CONDITION", "LIST")) |>
  select(ITEM, CONDITION, ID, ANSWER, CORRECT_ANSWER, LIST) |>
  mutate(ACCURATE = ifelse(CORRECT_ANSWER == ANSWER,
                           yes = "correct",
                           no = ifelse(ANSWER == "dont_know",
                                       yes = "dont_know",
                                       no = "incorrect")),
         CONDITION = case_when(CONDITION == '1' ~ 'illusion',
                               CONDITION == '2' ~ 'no illusion',
                               CONDITION == '100' ~ 'good filler',
                               CONDITION == '101' ~ 'bad filler')) |>
  group_by(ITEM, ACCURATE) |>
  summarise(Count = n())