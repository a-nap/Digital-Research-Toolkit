# Load necessary packages
library(ggplot2)
library(patchwork)
library(cowplot)


# Last homework: minimal and maximal values only --------------------------
minmax <- 
  moses.preprocessed |>
  group_by(ITEM, QUESTION, ACCURATE) |>
  summarise(count = n()) |>
  mutate(CORRECT_ANSWERS = count / sum(count) * 100) |>
  arrange(CORRECT_ANSWERS) |>
  filter(ACCURATE == "correct")

minmax |>
  filter(CORRECT_ANSWERS == min(minmax$CORRECT_ANSWERS) |
           CORRECT_ANSWERS == max(minmax$CORRECT_ANSWERS))

# Generate plots from the R base 'iris' dataframe -------------------------
# Find out more abotu the iris dataframe by typing: ?iris
plot1 <- 
  ggplot(iris) +
  aes(x = Sepal.Length, 
      fill = Species) +
  geom_density(alpha = 0.5) +
  theme_minimal()

plot2 <- 
  ggplot(iris) +
  aes(x = Sepal.Length, 
      y = Sepal.Width, 
      color = Species) +
  geom_point() +
  theme_minimal()

plot3 <- 
  ggplot(iris) +
  aes(x = Species, y = Petal.Width, fill = Species) +
  geom_boxplot() +
  theme_minimal()

plot4 <- 
  ggplot(iris) +
  aes(x = Petal.Length,
      y = Petal.Width,
      colour = Species,
      group = Species) +
  geom_step() +
  theme_minimal()


# Patchwork ---------------------------------------------------------------
# Join plots and arrange them in two rows
plots <-  (plot1 | plot2 | plot3) / plot4 + plot_layout(nrow = 2)
# Keep all legends together and add annotations
plots + plot_layout(guides = 'collect') + plot_annotation(tag_levels = 'A')

# Export plots
ggsave("patchwork_plots.png", width=1000, units = "px", dpi=100)
ggsave("patchwork_plots.pdf", dpi=100)

# Remove last plot
dev.off()

# Cowplot -----------------------------------------------------------------
# Join plots, remove all legends, add annotations
plots <-
  plot_grid(plot1 + theme(legend.position="none"), 
            plot2 + theme(legend.position="none"), 
            plot3 + theme(legend.position="none"), 
            plot4 + theme(legend.position="none"), 
            labels = c('A', 'B', 'C', 'D'), 
            label_size = 12)
# Choose one legend to keep
legend <- 
  get_legend(plot1 + 
               guides(color = guide_legend(nrow = 1)) +
               theme(legend.box.margin = margin(12, 12, 12, 12)))
# Put the plot and legend together
plot_grid(plots, legend, rel_widths = c(3, .4))

# Export plots
ggsave("cowplot_plots.png", height=8, dpi=100)
ggsave("cowplot_plots.pdf", dpi=100)
