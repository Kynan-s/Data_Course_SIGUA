library(tidyverse)
library(gganimate)

data = read_csv("Data/BioLog_Plate_Data.csv")
names(data)   

# 1. Tidy: stack the Hr_ columns
long = data %>%
  rename(Sample.ID = `Sample ID`) %>%
  pivot_longer(starts_with("Hr_"),
               names_to = "Time",
               values_to = "Absorbance") %>%
  mutate(Time = as.numeric(str_remove(Time, "Hr_")))  

View(long)

# 2. Soil or water
long = long %>%
  mutate(Type = case_when(
    str_detect(Sample.ID, "Soil") ~ "Soil",
    TRUE ~ "Water"))

# 3. Static plot
p1 = long %>%
  filter(Dilution == 0.1) %>%
  ggplot(aes(x = Time, y = Absorbance, color = Type)) +
  geom_smooth(se = FALSE) +
  facet_wrap(~Substrate) +
  labs(title = "Just dilution 0.1")
p1
ggsave("static_plot.png", p1, width = 12, height = 10)

# 4. Animated plot
p2 = long %>%
  filter(Substrate == "Itaconic Acid") %>%
  group_by(Sample.ID, Dilution, Time) %>%
  summarize(Mean_absorbance = mean(Absorbance), .groups = "drop") %>%
  ggplot(aes(x = Time, y = Mean_absorbance, color = Sample.ID)) +
  geom_line() +
  facet_wrap(~Dilution) +
  transition_reveal(Time)
animate(p2)
anim_save("itaconic_acid.gif")