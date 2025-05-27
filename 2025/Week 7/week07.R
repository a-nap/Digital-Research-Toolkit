# Week 07 -----------------------------------------------------------------
# May 20th 2025
# Learn more about the datasets used for these expercises:
# https://anna-pryslopska.shinyapps.io/TidyversePractice/#section-introduction

library(tidyverse)

# Exercise 1 --------------------------------------------------------------
# Create a ggplot object from the `mtcars` data.

ggplot(data = mtcars)

# Exercise 2 --------------------------------------------------------------
# Create a ggplot object from the `iris` data. This time, use the pipe operator.

iris |>
  ggplot()

# Exercise 3 --------------------------------------------------------------
# Create a ggplot object from the `mtcars` data and put the horsepower on the x axis
# and the miles per gallon on the y axis.

ggplot(data = mtcars) + aes(x = hp, y = mpg)

# Exercise 4 --------------------------------------------------------------
# Create a ggplot object from the `iris` data and put the petal length on the x axis
# and petal width y axis. This time, use the pipe operator.

iris |>
  ggplot() +
  aes(x = Petal.Length, y = Petal.Width)

# Exercise 5 --------------------------------------------------------------
# Create a ggplot object from the `mtcars` data and put the horsepower on the x axis
# and the miles per gallon on the y axis.
# Then add the geometry to make it a point plot.

ggplot(data = mtcars) +
  aes(x = hp, y = mpg) +
  geom_point()

# Exercise 6 --------------------------------------------------------------
# Create a ggplot object from the `iris` data and put the petal length on the x axis.
# Then add the geometry to make it a bar plot. This time, use the pipe operator.

iris |>
  ggplot() +
  aes(x = Petal.Length) +
  geom_bar()

# Exercise 7 --------------------------------------------------------------
# Create a ggplot object from the `iris` data and put the petal length on the x axis
# and petal width y axis. This time, use the pipe operator and make it a column plot.

iris |>
  ggplot() +
  aes(x = Petal.Length, y = Petal.Width) +
  geom_col()

# Exercise 8 --------------------------------------------------------------
# Create a ggplot object from the `airquality` data from May only.
# Put the day of the month on the x axis and the temperature on the y axis.
# Add first a column geometry and then a line geometry. Use the pipe operator.

airquality |>
  filter(Month == 5) |>
  ggplot() +
  aes(x = Day, y = Temp) +
  geom_col() +
  geom_line()

# Exercise 9 --------------------------------------------------------------
# Create a ggplot object from the `airquality`. Change the month column from
# numbers to characters. Put the temperature on the x axis and the ozone values
# on the y axis and create a column plot. Use the pipe operator.

airquality |>
  mutate(Month = as.character(Month)) |>
  ggplot() +
  aes(x = Temp,
      y = Ozone,
      fill = Month) +
  geom_col()

# Exercise 10 -------------------------------------------------------------
# Create a bar ggplot from the `iris` data. Put the petal length on the y axis.
# Group the data by petal width. Then change the color of the bars to the default gradient.

iris |>
  ggplot() +
  aes(y = Petal.Length,
      group = Petal.Width,
      fill = Petal.Width) + # Map (or assign) the color of the fill based on Petal.Width
  geom_bar() +
  scale_fill_gradient()

# Exercise 11 -------------------------------------------------------------
# Create a point plot with a smoothing line from the `iris` data. Put the petal
# length on the x axis and petal width on the y axis. Group the data by species.
# Then change the color of the points to pink, orchid and purple.

iris |>
  ggplot() +
  aes(x = Petal.Length,
      y = Petal.Width,
      group = Species,
      color = Species) +  # Map (or assign) the color of the points based on Petal.Width
  geom_point() +
  scale_color_manual(values = c("pink", "orchid", "purple")) +
  geom_smooth()

# Exercise 12 -------------------------------------------------------------
# Create a point ggplot from the `iris` data. Put the petal length on the x axis
# and petal width on the y axis. Group the data by species. Then change the shape
# (default) AND color of the points (to pink, orchid and purple).

iris |>
  ggplot() +
  aes(x = Petal.Length,
      y = Petal.Width,
      group = Species,
      color = Species,
      shape = Species) + # Assign the shapes of the point based on the values in Species
  geom_point() +
  scale_color_manual(values = c("pink", "orchid", "purple"))
