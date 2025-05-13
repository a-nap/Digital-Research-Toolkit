# Week 02 -----------------------------------------------------------------
# April 15th 2025

# Working directory
setwd("path here") # For me, this is "~/Linguistics toolkit course/2025/Code"
getwd() # Show the working directory

# Packages
install.packages(c("NAME", "ANOTHER NAME")) # Install packages called NAME and ANOTHER NAME
library(NAME) # Load one package at a time
sessionInfo() # Current R session information
detach("package:NAME", unload = TRUE) # Unload the package called NAME