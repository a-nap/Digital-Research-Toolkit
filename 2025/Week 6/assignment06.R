###########################################################################
# Assignment Week 6
###########################################################################

# The goal of this homework is to preprocess the noisy illusion data and compute summary statistics.

# Meet the data -----------------------------------------------------------

# This is a NEW experiment data that you haven't see yet. It's about the
# noisy channel effect and it was done with the same software that I used
# for the Moses illusion experiment.

# The noisy channel: Humans understand language even in noisy environments 
# and can recover meaning from imperfect utterances.
# Semantic cues can pull a comprehender towards plausible meanings,
# but too much noise makes comprehenders switch to the literal
# interpretation.

# In this study, participants read sentences bit by bit and the goal was to see
# whether one kind of sentence caused people to read for longer (indicating
# comprehension issues). 
# There were two kinds of sentences
# • The cook baked Lucy a cake. = grammatical sentence
# • The cook baked a cake Lucy. = ungrammatical sentence

# !!!!!!!!!!! The reading time is in milliseconds !!!!!!!!!!!!!!!!!!!

# You can read more about the effect here:
# Gibson et al. (2013). “Rational integration of noisy evidence and prior semantic
# expectations in sentence interpretation”. In: Proceedings of the
# National Academy of Sciences 110.20, pp. 8051–8056. DOI:
#  10.1073/pnas.1216438110.

# Task 1 ------------------------------------------------------------------

# Using pipes, clean up the  data like we did in class. 
# Save it to a new data frame. 
# !!!!!!!!!!! I WAS EVIL AND BROKE THE DATA IN SOME WAYS !!!!!!!!!!!
# You need to think about what kind of data is even possible (e.g. what values
# can reading time even take?).

# • select relevant columns
# • rename mislabeled columns
# • remove missing data
# • remove unnecessary rows
# • arrange by condition, and reading time
# • re-code the columns to the appropriate types
# • make new columns if needed 

# Hint: Preview the data first in at least 2 or 3 ways to check what nonsense
# I did and what the relevant columns may be.

# Task 2 ------------------------------------------------------------------

# Calculate for each sentence type:
# • the average reading time 
# • the standard deviation 
# • the minimal reading time 
# • the maximal reading time 

# Task 3 ------------------------------------------------------------------

# Calculate for each participant:
# • the average reading time 
# • the standard deviation 
# • the minimal reading time 
# • the maximal deviation 

# Hint: you can reuse the code from Task 2