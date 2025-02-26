library(tidyverse)

# Homework ----------------------------------------------------------------
# Task 1.1: Calculate the percentage of "correct", "incorrect", 
# and "don't know" answers in the two critical conditions.

moses <- read_csv("moses_clean.csv")
questions <- read_csv("questions.csv")

moses.preprocessed <-
  moses |> 
  inner_join(questions, by=c("ITEM", "CONDITION", "LIST")) |>
  select(ID, ITEM, CONDITION, QUESTION, ANSWER, CORRECT_ANSWER) |>
  mutate(ACCURATE = ifelse(CORRECT_ANSWER == ANSWER,
                           yes = "correct",
                           no = ifelse(ANSWER == "dont_know",
                                       yes = "dont_know",
                                       no = "incorrect")),
         CONDITION = case_when(CONDITION == '1' ~ 'illusion',
                               CONDITION == '2' ~ 'no illusion',
                               CONDITION == '100' ~ 'good filler',
                               CONDITION == '101' ~ 'bad filler'))  

moses.preprocessed |>
  filter(CONDITION %in% c('illusion', 'no illusion')) |>
  group_by(CONDITION, ACCURATE) |>
  summarise(count = n()) |>
  mutate(percentage = count / sum(count) * 100)

# Task 1.2: Of all the questions in all conditions, which 
# question was the easiest and which was the hardest?

minmax <- 
moses.preprocessed |>
  group_by(ITEM, QUESTION, ACCURATE) |>
  summarise(count = n()) |>
  mutate(CORRECT_ANSWERS = count / sum(count) * 100) |>
  arrange(CORRECT_ANSWERS) |>
  filter(ACCURATE == "correct")

head(minmax, 2)
tail(minmax, 2)

minmax |>
  filter(CORRECT_ANSWERS == min(minmax$CORRECT_ANSWERS) |
         CORRECT_ANSWERS == max(minmax$CORRECT_ANSWERS))

# Task 1.3: Of the Moses illusion questions, which question fooled most people?

moses.preprocessed |>
  group_by(ITEM, CONDITION, QUESTION, ACCURATE) |>
  summarise(count = n()) |>
  mutate(CORRECT_ANSWERS = count / sum(count) * 100) |>
  filter(CONDITION == 'illusion', 
         ACCURATE == "incorrect") |>
  arrange(CORRECT_ANSWERS) |>
  print(n=Inf)

# Task 1.4: Which participant was the best in answering questions? 
# Who was the worst?

moses.preprocessed |>
  group_by(ID, ACCURATE) |>
  summarise(count = n()) |>
  mutate(CORRECT_ANSWERS = count / sum(count) * 100) |>
  filter(ACCURATE == "correct") |>
  arrange(CORRECT_ANSWERS) |>
  print(n=Inf)

# Task 2.1
noisy_aj <- read.csv("noisy_aj.csv") 
noisy_aj |>
  group_by(CONDITION) |>
  summarise(MEAN_RATING = mean(RATING),
            SD = sd(RATING))

# Task 2.2 
noisy_rt <- read.csv("noisy_rt.csv") 
noisy_rt |>
  group_by(IA, CONDITION) |>
  summarise(MEAN_RT = mean(RT),
            SD = sd(RT))

# Task 2.3

noisy <- noisy_aj |>
  full_join(noisy_rt)
  # full_join(noisy_rt, by=c("ID", "ITEM", "CONDITION")) |> head()

# Lecture 13 May 2024 ------------------------------------------------------

# Noisy data preparation
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

# Plotting
# Data summary with 1 row per observation
noisy.summary <- 
noisy.rt |>
  group_by(ITEM, CONDITION, Parameter) |>
    summarise(RT = mean(RT)) |>
  group_by(CONDITION, Parameter) |>
  summarise(MeanRT = mean(RT),
            SD = sd(RT)) |>
  rename(IA = Parameter)

# Plot object
noisy.summary |>
  ggplot() +
  aes(x=as.numeric(IA), y=MeanRT, colour=CONDITION) +
  geom_line() +
  geom_point() +
  facet_wrap(.~CONDITION) +
  stat_sum() +
  # geom_errorbar(aes(ymin=MeanRT-2*SD, ymax=MeanRT+2*SD)) +
  coord_polar() +
  theme_classic() +
  labs(x = "Interest area",
       y = "Mean reading time in ms",
       title = "Noisy channel data",
       subtitle = "Reading times only",
       caption = "Additional caption",
       colour="Condition",
       size = "Count")
  
# Esquisse
library(esquisse)
set_i18n("de") # Set language to German
esquisser()
