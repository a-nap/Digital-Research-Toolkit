# Lecture 15 APR 2024 -----------------------------------------------------
# Installing and loading packages
install.packages("dplyr")
library(dplyr)

# Working directory
setwd() # FIXME remember to add your path!
getwd()

# First function call
print("Hello world!")

# Assignment
ten <- 10.2     # works
"rose" -> Rose  # works
name = "Anna"   # works
true <<- FALSE  # works
13/12 ->> n     # doesn't work
13/12 ->> nrs   # works

# Homework
# 1. Change the layout and color theme of RStudio. 
# 2. Make and upload a screenshot of your RStudio installation. 
# 3. Install and load the packages: tidyverse, knitr, MASS, and psych
# 4. Write a code that prints a long text (~30 words) and save it to a variable.
# 5. Upload your code to ILIAS.

# Session information
sessionInfo()
