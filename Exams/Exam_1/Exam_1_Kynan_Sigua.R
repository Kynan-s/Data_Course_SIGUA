# ============================================================
# Kynan Sigua
# BIOL 3100
# ============================================================

library(tidyverse)


# I. Read in data (20 pts) ----
# Read cleaned_covid_data.csv into an R data frame.

df_covid = read.csv('cleaned_covid_data.csv')

# II. A_states subset (20 pts) ----
# Subset to states that begin with "A"; save as A_states.
#   - Use tidyverse
#   - Tip: grepl() works, or a vector of the "A" states

A_states = grepl("^A", df_covid$Province_State)

# III. Deaths over time plot (20 pts) ----
# Using A_states, plot Deaths over time, one facet per state.
#   - Scatterplot
#   - Loess curves WITHOUT standard error shading
#   - Scales "free" in each facet

df_covid %>%
  filter(A_states) %>%
  ggplot(aes(x = Last_Update,
             y = Deaths,
             color = Province_State)) +
  geom_point() +
  geom_smooth(method = "loess", se = FALSE) +
  facet_wrap(~ Province_State, scales = "free")

# IV. state_max_fatality_rate (20 pts) ----
# Back to the FULL data set.
# Find the peak Case_Fatality_Ratio for each state;
# save as state_max_fatality_rate with 2 columns:
#   - Province_State
#   - Maximum_Fatality_Ratio
# Arrange in descending order by Maximum_Fatality_Ratio.
#   - Careful with missing values!

state_max_fatality_rate = df_covid %>%
  drop_na(Case_Fatality_Ratio) %>%
  group_by(Province_State) %>%
  summarise(Maximum_Fatality_Ratio = max(Case_Fatality_Ratio)) %>%
  arrange(desc(Maximum_Fatality_Ratio ))


# V. Max fatality ratio bar plot (20 pts) ----
# Use state_max_fatality_rate from Task IV.
#   - X-axis: Province_State
#   - Y-axis: Maximum_Fatality_Ratio
#   - Bar plot
#   - X-axis in descending order (make it a factor)
#   - X-axis

state_max_fatality_rate$Province_State = factor(state_max_fatality_rate$Province_State, levels = state_max_fatality_rate$Province_State)

state_max_fatality_rate %>%
  ggplot(aes(x = Province_State,
             y = Maximum_Fatality_Ratio)) +
  geom_col() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))



