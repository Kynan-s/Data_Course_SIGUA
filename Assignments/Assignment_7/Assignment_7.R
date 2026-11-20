library(tidyverse)

# Read the data. The path is relative because the project starts in Assignment_7
data = read_csv("Utah_Religions_by_County.csv")
View(data)

# Combine everything but county, pop_2010, Religious, and 'Non-Religious'
long = data %>%
  pivot_longer(cols = -c(County, Pop_2010, Religious, `Non-Religious`),
               names_to = "religion",
               values_to = "proportion")

write_csv(long, "utah_religions_tidy.csv")

# Overview: what religions make up each county?
p1 = ggplot(long, aes(x = proportion, y = County, fill = religion)) +
  geom_col()
p1
ggsave("fig1_religion_by_county.png", p1, width = 10, height = 7)

# Q1: does county population relate to any religion's proportion?
# Population is skewed so a log scale helps
p2 = ggplot(long, aes(x = Pop_2010, y = proportion)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  scale_x_log10() +
  facet_wrap(~religion, scales = "free_y") 
p2
ggsave("fig2_population_vs_religion.png", p2, width = 12, height = 8)

# Q2: does a religion's proportion relate to the non-religious proportion?
p3 = ggplot(long, aes(x = `Non-Religious`, y = proportion)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  facet_wrap(~religion, scales = "free_y") 
p3
ggsave("fig3_nonreligious_vs_religion.png", p3, width = 12, height = 8)

# Correlation (r) for each religion, from -1 to 1. Closer to ±1 = stronger
cors = long %>%
  group_by(religion) %>%
  summarize(r_population   = cor(Pop_2010, proportion),
            r_nonreligious = cor(`Non-Religious`, proportion)) %>%
  arrange(desc(abs(r_nonreligious)))
cors


#Q1 - Muslim has an r of 0.76. This is the only strong one out of the set and it
# means that bigger counties have a large amount of Muslims. Some other notible 
# ones were United Methodist Church, Evangelical, and Pentecostal Church of God.
# LDS had -0.00290 which basically means that there wan't much of a difference
# between small or large counties.

#Q2 - LDS has an r of -0.87 which is a strong negative meaning that counties 
# with LDS members had a lower count of nonreligious people. Episcopal Church
# has an r of 0.596 which is a moderate positive. Counties with them also had 
# lower amounts of nonreligious people. 

# All in all LDS has a big presence across the baard and even if there is a 
# correlation, that doesn't mean it is a causation. 
