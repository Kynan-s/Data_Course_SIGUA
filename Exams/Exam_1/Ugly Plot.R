library(tidyverse)
library(ggplot2)
library(palmerpenguins)


penguins %>%
  drop_na(sex) %>%
  ggplot(aes(x = body_mass_g,
             y = bill_length_mm,
             color = species)) +
  geom_point() +
  geom_path() +
  geom_line() +
  stat_ellipse() +
  labs( 
    title = "Penguin",
    x = "Body Mass",
    y = "Bill Length",
    color = "Species") +
  theme(
    plot.background  = element_rect(fill = "yellow"),
    panel.background = element_rect(fill = "hotpink"),
    text             = element_text(family = "Comic Sans MS", size = 18, color = "green"),
    axis.text.x      = element_text(angle = 45),
    legend.position  = "top"
  ) +
  scale_color_manual(values = c("red", "orange", "darkred")) 

ggsave("ugly_plot.png", width = 8, height = 6)