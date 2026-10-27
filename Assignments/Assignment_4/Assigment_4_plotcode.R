library(ggplot2)
library(tidyverse)


df_obese = read.csv('places_county_2025.csv')

df_obese %>%
  ggplot(aes(x = OBESITY_CrudePrev,
             y = DIABETES_CrudePrev)) +
  geom_point(alpha = 0.3) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Counties with higher obesity have higher diabetes rates",
       x = "Adult obesity (%)",
       y = "Adult diabetes (%)")

ggsave("expected_result.png", width = 8, height = 6)
