###########################################################################
# Assignment Week 4
###########################################################################

# Please complete the following 4 tasks. Submit the assignment as a single R script. 
# Use comments and sections to give your file structure. I should be able to run
# your script without errors.

# Task 1 ------------------------------------------------------------------
# Clean up the Moses illusion data like we did in the tasks in class and save it 
# to a new data frame. 
# - select relevant columns
# - rename mislabeled columns
# - remove missing data
# - remove unnecessary rows
# - arrange by condition, and answer






# Task 2 ------------------------------------------------------------------
# Have the mosesdata saved in your environment as "moses". 
# Why do these functions not work as intended? Fix the code and explain what was
# wrong. 
### IMPORTANT #############################################################
# Type your answers in the comments next to the word "ANSWER".

read_csv(moses.csv)                         # ANSWER
tail(moses, n==10)                          # ANSWER
Summary(moses)                              # ANSWER
describe(Moses)                             # ANSWER
filter(moses, CONDITION == 102)             # ANSWER
arragne(moses, ID)                          # ANSWER


# Task 3 ------------------------------------------------------------------
# From the Moses illusion data, make two new variables (called 'nobel' and 
# 'valentines', respectively) with all answers which are supposed to mean 
# "Nobel Prize" and "Valentines Day". You will have to figure out which ITEM ID
# corresponds to the questions asking about Nobel Prize and Valentines Day.
# Tip: The questions always come in pairs, so ITEM ID 1 will be present in
# CONDITION 1 and 2. You want to look at both conditions in this assignment.
# Try to figure out which item IDs you need by previewing the data first. 








# Task 4 ------------------------------------------------------------------
# Logic exercise from the slides
# Your world has four individuals: octopus, dolphin, llama, and parrot.
# Octopus and dolphin are of the type 'dive', because they can dive.
# Llama and dolphin are of the type 'mammal', because they are mammals.
# Type your answers as a string. For example:

octopus_dolphin = "dive"
llama_dolphin = "mammal"
octopus_parrot = "!mammal"

### IMPORTANT #############################################################
# Write your answers in between the quotation marks, as in the examples above.
octopus = ""
dolphin = ""
llama = ""
parrot = ""
llama_parrot = ""
parrot_dolphin = ""
llama_octopus_parrot = ""
octopus_llama_dolphin = ""
dolphin_parrot_octopus = ""
octopus_dolphin_llama_parrot = ""  
exclude_all = ""
