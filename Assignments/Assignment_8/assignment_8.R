library(tidyverse)
library(modelr)
library(easystats)

df = read_csv("mushroom_growth.csv")
View(df)



# Light vs growth, colored by species
p1 = ggplot(df, aes(x = Light, 
                    y = GrowthRate, 
                    color = Species)) +
  geom_point() +
  geom_smooth(method = 'lm', se = FALSE)
p1
ggsave("fig1_light.png", p1)

# Nitrogen vs growth.
p2 = ggplot(df, aes(x = Nitrogen,
                    y = GrowthRate,
                    color = Species)) + 
  geom_point() + 
  geom_smooth(se = FALSE)
p2
ggsave("fig2_nitrogen.png", p2)

# Humidity & growth
p3 = ggplot(df, aes(x = Humidity,
                    y = GrowthRate,
                    fill = Species)) +
  geom_boxplot()
p3
ggsave("fig3_humidity.png", p3)


# Temperature & Growth
p4 = ggplot(df, aes(x = factor(Temperature),
                    y = GrowthRate,
                    fill = Species)) +
  geom_boxplot()
p4
ggsave("fig4_temperature.png", p4)

mod1 = lm(GrowthRate ~ Light, data = df)
mod2 = lm(GrowthRate ~ Light + Species, data = df)
mod3 = lm(GrowthRate ~ Light * Species + Humidity, data = df)
mod4 = lm(GrowthRate ~ Light * Species * Humidity + Temperature + Nitrogen, data = df)

# Mean squared error. average squared distance from the model.
mean(mod1$residuals^2)
mean(mod2$residuals^2)
mean(mod3$residuals^2)
mean(mod4$residuals^2)

compare_performance(mod1, mod2, mod3, mod4)


best = mod4 

# Make every combination of new values, including some outside the real data
newdf = expand_grid(Light = c(0, 10, 20, 30, 40),
                    Species = unique(df$Species),
                    Humidity = unique(df$Humidity),
                    Temperature = c(20, 25),
                    Nitrogen = c(0, 20, 40))

newdf$pred = predict(best, newdata = newdf)
newdf$Type = "Hypothetical"

# Real data with the model's predictions
real = df %>% add_predictions(best)
real$Type = "Real"

# Plot real vs hypothetical predictions
p5 = ggplot() +
  geom_point(data = real, aes(x = Light, y = GrowthRate), color = "black") +
  geom_point(data = newdf, aes(x = Light, y = pred, color = Type)) +
  facet_wrap(~Species)
p5
ggsave("fig5_predictions.png", p5)


nl = read_csv("non_linear_relationship.csv")

modA = lm(log(response) ~ predictor, data = nl)
summary(modA)

modB = lm(response ~ poly(predictor, 2), data = nl)


