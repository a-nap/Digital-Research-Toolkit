# Week 03 -----------------------------------------------------------------
# April 22nd 2025

library(tidyverse)
library(psych)

# Data types
typeof(1L)
is.numeric(1)
as.character(1)

# Printing and assigning
print("Hello World")
jabberwocky <- print("Twas brillig, and the slithy toves did gyre and gimble in the wabe: all mimsy were the borogoves, and the mome raths outgrabe.")
rm(jabberwocky) # Removes the variable "jabberwocky"

# This operator can be used anywhere
ten <- 10.2
"rose" -> Rose
mean(number <- 10)

# This operator can be used only at the top level
name = "Anna"
mean(number = 10) # This will not work and cause an error

# This operator assigns the value  (used mainly in functions)
true <<- FALSE
13/12 ->> n
mean(number <<- 10)

# Type coercion
TRUE + 1
5L + 2
3.7 * 3L
99999.0e-1 - 3.3e+3
10 / as.complex(2)
as.character(5) / 5 # This will not work and will cause an error
paste(5+0i, "five")

# Loading data
getwd() # Check your working directory!
moses <- read_csv("moses_raw_data.csv")

# Inspecting data
View(moses)
moses
print(moses, n=Inf)
head(moses)
tail(moses, n=20)
spec(moses)
summary(moses)
describe(moses)
colnames(moses)

# This function calculates the probability of getting exactly 6 successes 
# out of 9 tries in a binomial experiment, where each try has a 50% (0.5) 
# chance of success. In other words: What are the chances of a fair coin landing 
# on "heads" 6 times out of 9 throws. Returns a probability between 0 and 1.
# You can translate probability to percent by multiplying the result by 100 
# (so around 16.4%).
dbinom(x=6, size=9, prob=0.5) 

min(moses$EventTime)
max(moses$EventTime)
quantile(moses$EventTime)
colnames(moses)
mean(moses$EventTime)
median(moses$EventTime)
min(moses$EventTime)
max(moses$EventTime)
range(moses$EventTime)
sd(moses$EventTime)
skew(moses$EventTime)
kurtosis(moses$EventTime) # requires the package "moments", which we won't use
mean_se(moses$EventTime)

# Data cleanup
select(WHERE, WHAT)                  # Select columns
na.omit(WHERE)                       # Remove missing values
filter(WHERE, TRUE CONDITION)        # Select rows, based on a condition
arrange(WHERE, HOW)                  # Reorder data by rows
rename(WHERE, NEW = OLD)             # Rename columns
mutate(WHERE, NEW = FUNCTION(OLD))   # Create new values

# Optional plot: Normal distribution with standard deviation lines.
# Feel free to ignore. This code gives you a small preview of data visualization
# That we'll be doing later in the course.

# Define custom colors I use for the course
dusk       <- "#343643"
pine       <- "#476938"
meadow     <- "#86B047"
sunshine   <- "#DABA2E"

# Set the mean and standard deviation for the normal distribution
mean_value <- 0
sd_value   <- 1

# Create a sequence of values from -4 to 4 (for plotting the bell curve)
x_values   <- seq(-4, 4, length.out = 100)

# Generate the normal distribution values for those x-values
y_values   <- dnorm(x_values, mean = mean_value, sd = sd_value)

# Create a data frame to use with ggplot
data       <- data.frame(x = x_values, y = y_values)

# Plot the normal distribution curve
ggplot(data, aes(x = x, y = y)) +
  geom_line(linewidth=2) + # Line for the bell curve
  annotate("text", x = mean_value + sd_value, y = 0.4, label = "68%", color = pine, size = 5) +
  annotate("text", x = mean_value + 2*sd_value, y = 0.4, label = "95%", color = meadow, size = 5) +
  annotate("text", x = mean_value + 3*sd_value, y = 0.4, label = "99.7%", color = sunshine, size = 5) +
  annotate("text", x = mean_value - sd_value, y = 0.4, label = "±1 SD", color = pine, size = 5) +
  annotate("text", x = mean_value - 2*sd_value, y = 0.4, label = "±2 SD", color = meadow, size = 5) +
  annotate("text", x = mean_value - 3*sd_value, y = 0.4, label = "±3 SD", color = sunshine, size = 5) +
  geom_histogram(stat="identity", fill="white", color=dusk)+ # Uncomment this line to see the values
  geom_vline(xintercept = mean_value, color = dusk, linetype = "dashed") +  # Mean line
  geom_vline(xintercept = mean_value + sd_value, color = pine, linetype = "dotted", linewidth=1) +  # +1 SD line
  geom_vline(xintercept = mean_value - sd_value, color = pine, linetype = "dotted", linewidth=1) +  # -1 SD line
  geom_vline(xintercept = mean_value + 2*sd_value, color = meadow, linetype = "dashed", linewidth=1) +  # +2 SD line
  geom_vline(xintercept = mean_value - 2*sd_value, color = meadow, linetype = "dashed", linewidth=1) +  # -2 SD line
  geom_vline(xintercept = mean_value + 3*sd_value, color = sunshine, linetype = "solid", linewidth=1) +  # +3 SD line
  geom_vline(xintercept = mean_value - 3*sd_value, color = sunshine, linetype = "solid", linewidth=1) +  # -3 SD line
  labs(title = "Normal distribution with standard deviation lines", x = "Some variable X", 
       y = "Density (how much data lies here)",
       subtitle="AKA Bell curve with ±1, ±2, ±3 SDs") +
  theme_bw() +
  theme(panel.grid = element_blank()) # Removes grid lines, because I think they're distracting
  
