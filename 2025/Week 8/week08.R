# Week 08 -----------------------------------------------------------------
# May 27th 2025

library(tidyverse)
library(patchwork)

# Plot 1 ------------------------------------------------------------------
my.plot1 <-
iris |>
  ggplot() +
  aes(x = Petal.Length,
      y = Petal.Width,
      group = Species,
      color = Species,
      shape = Species) + 
  geom_point() +
  scale_color_manual(values = c("pink", "orchid", "purple")) +
  theme_light() +
  labs(x = "Petal length",
       y = "Petal width",
       title = "Orchid petal comparison",
       subtitle = "Petal length and width in cm")

# Plot 2 ------------------------------------------------------------------
my.plot2 <-
iris |>
  ggplot() +
  aes(x = Petal.Length) +
  geom_histogram(fill = "#112446") +
  theme_light() +
  xlim(0, 8) +
  labs(x = "Petal length (cm)",
       y = "Count",
       title = "Petal distribution")

# Plot 3 ------------------------------------------------------------------
my.plot3 <-
  iris |>
  ggplot() +
  aes(x = Species,
      y = Sepal.Width,
      group = Species,
      fill = Species) + 
  geom_boxplot() +
  scale_fill_manual(values = c("pink", "orchid", "purple")) +
  theme_light() +
  labs(x = "Sepal length",
       y = "Sepal width",
       title = "Orchid sepal comparison",
       subtitle = "Sepal length and width in cm")

my.plot1
my.plot2
my.plot3

# Export data -------------------------------------------------------------
write_csv(iris, "iris.csv")
write_tsv(iris, "learning_data/iris.tsv")
write_delim(iris, "iris.txt", delim=";")

# Export plots ------------------------------------------------------------
ggsave("iris1.png", width=10, height=10, units = "cm", dpi=150)
ggsave(plot=my.plot2, "iris2.svg", width=10, height=10, units = "cm", dpi=150)

all.my.plots <-
(my.plot1  + my.plot3) / my.plot2 + 
  plot_annotation(
    tag_levels = 'A',
    title = 'All of my orchid plots',
    caption = 'Disclaimer: None of these plots are particularly insightful'
  ) +
  plot_layout(guides = 'collect')

ggsave("iris3.pdf", width=20, height=15, units = "cm", dpi=150)
