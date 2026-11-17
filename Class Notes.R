# 1. create a data frame contains your favorite fruits 
#  (at least 3) and their calories 
# 3. After creating the df, add a new col called 'calaries_100'
#    the value = original cal + 100
# 4. write a loop to print out 'calaries_100'
# 5. save the data frame to local

df_fruit = data.frame(
  fruit = c('apple', 'orange', 'banana', 'pear'),
  cal = c(1, 22, 33, 44)
)

df_fruit$fruit
df_fruit$calaries_100 = 1
df_fruit$calaries_100 = df_fruit$cal + 100
df_fruit

for (i in 1:nrow(df_fruit)) {
  
  print(i)
}

paste('a', 'b')
paste0('a', 'b')
paste0('Data/', i)

paste(df_fruit$fruit[1], 'calories is', df_fruit$calaries_100[1])
paste(df_fruit$fruit[2], 'calories is', df_fruit$calaries_100[2])
df_fruit$calaries_100[3]
df_fruit$calaries_100[4]


for (i in 1:nrow(df_fruit)) {
  print(paste(df_fruit$fruit[i], 'calories is', df_fruit$calaries_100[i]))
}

read.csv('Data/2114.txt')
write.csv(df_fruit, 'df_fruit.txt', row.names = F)
read.csv('df_fruit.csv')
write.table()

mtcars
data(mtcars)

mtcars[1:3, 1:3]
df_car = mtcars
df_car = df_car[1:3, 1:3]

## 1. save mtcars to a new obj
## 2. examine the obj. (ex: rows, cols, col names...)

df_car = mtcars
str(df_car)
dim(df_car)
names(df_car)


df_car[2,3]
df_car[1:3,3]
1:3

new_obj = df_car[c(1,2,5), 1:3]

## what's max, min, averge of mpg?
max()
min()
mean()

my_mpg = df_car$mpg

max(df_car$mpg)
mean(df_car$mpg)

## save cars with mpg > average to new obj
df_car$mpg > 20
df_car[df_car$mpg > 20, ]
good_car = df_car[df_car$mpg > 20, 1:3]


## save cars with mpg > average and cyl equal to 4 to new obj

df_car = mtcars
avg_mpg = mean(df_car$mpg) 
View(avg_mpg)

cyl_4 = df_car$cyl
df_new = df_car[df_car$mpg > avg_mpg & cyl_4 == 4, ]
View(df_new)


mtcars
df_car = mtcars
mean(df_car$mpg)
df_car[df_car$mpg > mean(df_car$mpg),]

# and means both conditions must be true
# ! means not


df_car=mtcars
dim(df_car)
df_car[,-1]
names(df_car[, -1])
dim(df_car[, -1])
dim(df_car[, -c(1, 3, 5 )])
dim(df_car[, -c(1:5])
dim(df_car[-1,])


dataframe$new
sort
?sort() #adding a ? to the start of a funciton will pull up a description



# remove 'hp', 'wt' and save car with mpg > 20

df_car = mtcars
names(df_car)

# remove hp
#rm_hp = df_car[, -c(4)]
#View(rm_hp)

# remove wt
#rm_wt = df_car[, -c(6)]
#View(rm_wt)


df_car[, -c(4, 6)]
View(df_new2)
df_cyl = df_car$cyl
df_car[df_car$mpg > 20 & df_cyl !=4, ]


## install package
install.packages()
install.packages('qrcode')
library(qrcode) # means to open it in current environment
url <- 'https://www...'
qr <- qr_code(url)
qr
plot(qr) # creates a qr code

package::function
## install tidyverse package
## load tidyverse package in your environment

install.packages('tidyverse')
library(tidyverse)

# %>%

#save cars wtih mpg > 22, cyl = 4, wt < 3
# and hp > 90 in a new obj
# use tidyverse


df_car = mtcars
df_cyl = df_car$cyl
df_wt = df_car$wt
df_hp = df_car$hp
df_car3 = df_car[df_car$mpg > 22 & df_cyl ==4 & df_wt < 3 & df_hp > 90, ]
View(df_car3)

# this won't save as a new object but will show you in a new tab
library(tidyverse)
new_obj = df_car %>%
  filter(mpg > 22, cyl == 4, wt < 3, hp > 90) %>%
  View()

# to actually save it as a new object, it needs to be just this:
library(tidyverse)
new_obj = df_car %>%
  filter(mpg > 22, cyl == 4, wt < 3, hp > 90)

# select() lets you pick which columns to show
#select(-[]) when you add the negative, it doesn't show that column
?select()


?pluck()

new_obj %>%
  pluck('mpg')
  mean()
  
new_obj %>%
  select('mpg')
  mean()
  
# remove cars with cyl = 4
# calculate average mpg
  
df_car %>%
  filter(cyl !=4) %>%
  pluck('mpg') %>%
  mean()



## restart R
## read 'cleaned_bird_data.csv' using relative path
## calculate aberage of egg size
## save birds with egg sizes greater than average to new obj
## save to csv and open it on laptop




#reading csv file
df_bird = read.csv("~/Data_Course_SIGUA/Data/cleaned_bird_data.csv")

#load tidyverse
library(tidyverse)

#calcualte avg egg size
avg_egg_size = df_bird %>%
  filter(Egg_mass !='NA') %>%
  pluck('Egg_mass') %>%
  mean()

## calculate average of egg size - non tidyverse
## avg_egg_size = mean(df_bird$egg_size, na.rm = TRUE)
## avg_egg_size

#view average egg size
avg_egg_size

#create big egg where egg bigger than avg - tidyverse
big_egg = df_bird %>%
  filter(Egg_mass > avg_egg_size)
dim(big_egg)


#create big egg where egg bigger than avg - non tidyverse
#big_eggs = df_bird[df_bird$Egg_mass > avg_egg_size, ]



#view big egg
big_eggs

#create csv
write.csv(big_eggs, "Data_Course_SIGUA/big_egg_bird.csv", row.names = FALSE)


big_egg = df_bird %>%
  filter(Egg_mass > avg_egg_size)
  summarise(min_egg = min(Egg_mass),
            max_egg = max(Egg_mass))
  
  
?summarize
?palmerpenguins
  
#install penguins
install.packages('palmerpenguins')

#load into environment
library(palmerpenguins)
library(tidyverse)

View(penguins)

#create data frame
df_penguin = penguins

#calculate avg bill length by species
avg_bill = df_penguin %>%
  group_by(species) %>%
  summarize(avg_bill_length = mean(bill_length_mm, na.rm = T))

#single average
#avg_bill <- df_penguin %>%
  #filter(!is.na(bill_length_mm)) %>%
  #pull(bill_length_mm) %>%
  #mean()

#view avg bill length
View(avg_bill)


testing_bill = df_penguin %>%
  filter(!is.na(bill_length_mm)) %>%
  pluck('bill_depth_mm') %>%
  mean()



#more info
bill_stuff = df_penguin %>%
  group_by(species, island) %>%
  summarize(avg_bill_length = mean(bill_length_mm, na.rm = T),
            max_length = max(bill_length_mm, na.rm = T),
            min_length = min(bill_length_mm, na.rm = T)) %>%
  arrange(desc(max_length)) %>% # sort values by asc or desc
  relocate(avg_bill_length, .after = min_length) %>% # move columns around
  select(species, island, max_length, min_length, avg_bill_length) %>% # select which columns I want
  mutate(size = case_when(max_length > 50 ~ 'big guy', TRUE ~ 'normal guy'))# create a new column
  # filter(new_col) # remove columns

#view bill stuff
View(bill_stuff)

### case.when( condition ~ if T. then)





## find penguins body mass > 5000 and bill length > average
## on each island how many male and female
## what are their max weight and max bill length
## bonus: add a new col to the penguin dataset
##

#load into environment
library(palmerpenguins)
library(tidyverse)

#create data frame
df_penguin = penguins

the_penguins = df_penguin %>%
  filter(body_mass_g > 5000,
         bill_length_mm > mean(bill_length_mm, na.rm = T)) %>%
  group_by(sex, island) %>%
  summarize(n_penguin = n(),
    max_length = max(bill_length_mm, na.rm = T),
    max_weight = max(body_mass_g, na.rm = T)) %>%
  mutate(size = case_when(max_weight > 6000 ~ 'huge', TRUE ~ 'big'))

View(the_penguins)       


true_penguins = df_penguin %>%
  mutate(critiria = case_when(body_mass_g > 5000 ~ 'True', TRUE ~ 'False')) %>%
  View()


## Professor

penguins %>%
  filter(body_mass_g > 500 & bill_length_mm > mean(bill_length_mm, na.rm = T)) %>%
  group_by(sex, island) %>%


penguins %>%
  mutate(criteria = body_mass_g > 5000 & bill_length_mm > mean(bill_length_mm, na.rm = T)) %>%
  View()

avg_bill_length = mean(penguins$bill_length_mm, na.rm = T)

penguins %>%
  filter(!is.na(bill_length_mm)) %>%
  mutate(criteria = case_when(body_mass_g > 5000 & bill_length_mm > avg_bill_length ~ 'BIG', TRUE ~ 'Tiny'))%>%
  View()





## install 'ggplot2'
library(ggplot2)

plot()
ggplot()


ggplot(data = penguins,
       aes(x = body_mass_g,
           y = bill_length_mm)) + #aesthetic
  geom_point() + 
  geom_smooth()


penguins%>%
  drop_na() %>%
  ggplot(aes(x = body_mass_g,
             y = bill_length_mm,
             color = sex,
             shape = island)) + #aesthetic
  geom_point()

ggsave()






## Look at penguin data
## think about what graph you want to make 
## make a graph

library(palmerpenguins)
library(ggplot2)

# check rows
head(penguins)

penguins %>%
  drop_na() %>%
  ggplot(aes(x = flipper_length_mm,
             y = bill_length_mm,
             color = island,
             shape = sex)) + #aesthetic
  geom_point()

ggsave("penguin_plot.png")

penguins %>%
  ggplot(aes(x = body_mass_g,
             fill = species)) + 
  geom_density(alpha = 0.2, linetype = 'dashed')


penguins %>%
  ggplot(aes(x = body_mass_g,
             y = bill_length_mm,
             color = island,
             shape = species)) + 
  geom_point(alpha = 3, size = 3)







## make a bar chart to show average weight


penguins %>%
  drop_na(sex) %>%
  group_by(species) %>%
  summarize(avg_mass = mean(body_mass_g, na.rm = T)) %>%
  ggplot(aes(x = species, y = avg_mass, color = species)) +
  geom_col()

penguins %>%
  drop_na(sex) %>%
  group_by(species) %>%
  summarize(avg_mass = mean(body_mass_g, na.rm = T),
            sd = sd(body_mass_g)) %>%
  ggplot(aes(x = species,
             y = avg_mass,
             color = species)) +
  geom_bar(stat = 'identity') +
  geom_errorbar(aes(ymin = avg_mass - sd,
                    ymax = avg_mass + sd))





## make a graph using penguin data
## try to use a new geom_
## overlap at least two geom_
## add title for the plot
## bonus: adjust title, axis, or other labels


library(tidyverse)
library(ggplot2)
library(palmerpenguins)

penguins %>%
  drop_na(sex) %>%
  group_by(island) %>%
  summarize(max_mass = max(body_mass_g, na.rm = T)) %>%
  ggplot(aes(x = island,
         y = max_mass,
         color = island,
         group = 1)) +
  geom_violin(aes(fill = island), alpha = 0.4) +
  geom_point(size = 4) +
  labs(
    title = "Penguins Max Mass",
    x = "Island",
    y = "Max Mass"
  ) +
  theme_minimal()


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



penguins %>%
  drop_na(sex) %>%
  ggplot(aes(x = body_mass_g,
             y = bill_length_mm,
             color = species)) +
  geom_violin() +
  geom_boxplot() +
  geom_point() +
  stat_ellipse()




install.packages(patchwork)
library(patchwork)
p3 = p2 (theme_dark())

p1 + p2


read.delim('Data_Course_SIGUA/Data/DatasaurusDozen.tsv')
read.csv('Data_Course_SIGUA/Data/DatasaurusDozen.tsv')

df_dino = read.delim('Data_Course_SIGUA/Data/DatasaurusDozen.tsv')

head(df_dino)

df_dino %>%
  ggplot(aes(x = x,
             y = y,
             color = dataset)) +
  geom_point() +
  geom_boxplot(alpha = 0) +
  geom_violin(alpha = 0) +
  stat_ellipse(size = 1)



penguins %>%
  drop_na(sex) %>%
  group_by(species) %>%
  summarise(avg_weight = round(mean(body_mass_g),2)) %>%
  ggplot(aes(x = species,
             y = avg_weight)) +
  geom_col() +
  geom_text(aes(label = avg_weight))





df_dino = read.delim('Data_Course_SIGUA/Data/DatasaurusDozen.tsv')

head(df_dino)
range(df_dino$x)


df_dino %>%
  drop_na(dataset) %>%
  group_by(dataset) %>%
  summarise(avg_x = mean(x),
            avg_y = mean(y),
            med_x = median(x),
            med_y = median(y),
            max_x = max(x),
            max_y = max(y),
            min_x = min(x),
            min_y = min(y))



## package GGally
library(GGally)
ggpairs(penguins)

head(penguins)


penguins %>%
  drop_na(sex) %>%
  group_by(species) %>%
  ggplot(aes(x = bill_depth_mm,
             y = body_mass_g,
             color = sex
             )) +
  geom_point(size = 4, alpha = .5) +
  facet_wrap(~ species) +
  scale_color_manual(values = c('female' = 'darkorchid', 'male' = 'chartreuse')) +
  labs(x = "Bill depth (mm)",
    y = "Body mass (g)",
    color = "Sex") +
  theme_bw() + 
  theme(strip.background = element_blank(),
       strip.text = element_text(face = 'bold', size = 15),
       axis.title = element_text(face = 'bold', size = 15))



# install gapminder, gganimate, gifski, av
# take a look of gapminder and make some cool graph

install.packages("gapminder")
install.packages("gganimate")
install.packages("gifski")
install.packages("av")

library(gapminder)
library(gganimate)
library(gifski)
library(tidyverse)
library(av)


View(gapminder)

gapminder %>%
  drop_na(continent) %>%
  group_by(year) %>%
  summarize(avg_life = round(mean(lifeExp), 2), .groups = "drop") %>%
  ggplot(aes(x = country,
             y = avg_life,
             color = continent)) +
  geom_col()

gapminder %>%
  drop_na(continent) %>%
  group_by(year, continent) %>%
  summarize(avg_life = round(mean(lifeExp), 2), .groups = "drop") %>%
  ggplot(aes(x = year, y = avg_life, fill = continent)) +
  geom_col(position = "dodge")




names(gapminder)
View(gapminder)
unique(gapminder$country)
unique(gapminder$continent)
unique(gapminder$year)
range(gapminder$year)

gapminder %>%
  ggplot(aes(x = lifeExp,
             y = gdpPercap,
             color = continent)) +
  geom_point(aes(size = pop)) +
  facet_wrap(~ continent)

ggsave('file.png')


gapminder %>%
  ggplot(aes(x = lifeExp,
             y = pop,
             color = continent)) +
  geom_point(aes(size = pop)) +
  facet_wrap(~ continent) +
  labs(title = '{frame_time}') +
  geom_text(aes(label = country), vjust = 2) +
  transition_time(time = year)

anim_save('anim_plot.gif')

my_country = c('United States', 'China', 'India', 'Japan', 'France', 'South Africa', 'New Zealand')

gapminder %>%
  mutate(my_label = case_when(country %in% my_country ~ country)) %>%
  ggplot(aes(x = lifeExp,
             y = pop,
             color = continent)) +
  geom_point(aes(size = pop)) +
  facet_wrap(~ continent) +
  labs(title = '{frame_time}') +
  geom_text(aes(label = my_label), vjust = 2) +
  transition_time(time = year)
  

View(penguins)

## read 'wide_income_rent.csv' using relative path
## compare data structure with penguins data
## make a graph

df = read.csv('Data/wide_income_rent.csv')
View(df)

df2 = t(df)
View(df2)
df3 = df2[-1, ]
View(df3)

str(df3)

df3 = as.data.frame(df3)
str(df3)
names(df3) = c('income', 'rent')
df3$state = rownames(df3)

df3 %>% 
  ggplot(aes(x = income, y = rent)) +
  geom_point() +
  geom_text(aes(label = state))


df = data.frame(
  id = c(1,2,3,4,5),
  height = c(120, 130, 145, 155, 170),
  weight = c(34, 55, 70, 80, 100),
  score = c(22, 33, 44, 55, 66)
)

df_long = df %>% 
  pivot_longer(cols = c(height, weight),
               names_to = 'type',
               values_to = 'measurement') 
df_long %>% 
  pivot_wider(names_from = type,
              values_from = measurement)
## practice pivot_longer and pivot_wider
## make 'wide_income_rent.csv' tidy


df %>% 
  pivot_longer(cols = height,
               names_to = 'type',
               values_to = 'measurement')

df %>% 
  pivot_longer(cols = c(height, score),
               names_to = 'type',
               values_to = 'measurement')


df %>% 
  pivot_longer(-id,
               names_to = 'type')


df %>% 
  pivot_longer(cols = everything(),
               names_to = 'type',
               values_to = 'measurement')



View(df)

df %>% 
  pivot_longer(-variable,
               names_to = 'state') %>% 
  pivot_wider(names_from = variable,
              values_from = value) %>% View()


table1
table2


## take a look table1 (good format)
## make table2 tidy

table2 %>% 
  pivot_wider(names_from = type,
              values_from = count)


table3
?separate

table3 %>% 
  separate(rate, into = c('cases', 'pop'))


table3 %>% 
  separate(rate, into = c('cases', 'pop'), convert = T)


table4a
table4b

merge()
join_by()
full_join()

full_join(x, y)



table4a
table4b
table1
table2
table3

## make table 4a&b tidy

merge()
join_by()
full_join()

full_join(x, y)

x = table4a %>% 
  pivot_longer(-country,
               names_to = 'year',
               values_to = 'cases')

y = table4b %>% 
  pivot_longer(-country,
               names_to = 'year',
               values_to = 'population')


full_join(x, y)

x %>% 
  full_join(y) 


table5

## make it tidy

str(merge(table5$century, table5$year))
paste('19', '00')
paste('19', '00', sep = '/')
paste0('19', '00')
unite('19', '00')


paste(table5$century, table5$year, sep = '')
paste0(table5$century, table5$year)

df <- expand_grid(x = c("a", NA), y = c("b", NA))
df

df %>% unite("z", x:y, remove = FALSE, sep = '')


table5 %>% 
  mutate(year = as.numeric(paste0(table5$century, table5$year))) %>% 
  select(-century)

table5 %>% 
  mutate(year = paste0(table5$century, table5$year) %>% as.numeric()) %>% 
  select(-century) %>% 
  separate(rate, into = c('cases', 'population'), convert = T)


read.csv()

library(readxl)
df = read_xlsx('/Users/yu-yaliang/Desktop/Data_Course_LASTNAME/Worst Data Storage Ever.xlsx',
               sheet = 3)
View(df)

df = read_xlsx('/Users/yu-yaliang/Desktop/Data_Course_LASTNAME/Worst Data Storage Ever.xlsx',
               skip = 17)
View(df)

df = read_xlsx('/Users/yu-yaliang/Desktop/Data_Course_LASTNAME/Worst Data Storage Ever.xlsx',
               range = 'E18:F21')
View(df)

names(penguins) = c()

library(janitor)
make_clean_names('# of bacteria')
make_clean_names('% of bacteria')
make_clean_names('# & % of bacteria')

clean_names()

df = read_xlsx('/Users/yu-yaliang/Desktop/Data_Course_LASTNAME/Worst Data Storage Ever.xlsx',
               sheet = 2 ,range = 'B1:G10')
View(df)

names(df)


df %>% 
  clean_names()



library(tidyverse)
library(readxl)
read_excel('Data/messy_bp.xlsx')

df = read_xlsx('Data/messy_bp.xlsx', skip = 3)
read.csv('', skip = )

view(df)

## 1. combine month, day, year

df %>%
  unite("Date",'Month of birth', 'Day birth', 'Year birth', sep = "-")




install.packages("janitor")
library(tidyverse)
library(janitor)


bp_long <- df %>%
  clean_names() %>%
  mutate(birthday = paste(month_of_birth, day_birth, year_birth, sep = "-")) %>%
  select(-month_of_birth, -day_birth, -year_birth) %>%
  select(-starts_with("hr")) %>%
  pivot_longer(cols = starts_with("bp"),
               names_to = "visit",
               values_to = "bp") %>%
  mutate(visit = case_when(visit == "bp_8"  ~ "1",
                           visit == "bp_10" ~ "2",
                           visit == "bp_12" ~ "3")) %>%
  separate(bp, into = c("sys", "dia"), convert = TRUE) %>%
  pivot_longer(cols = c("sys", "dia"),
               names_to = "bp_type",
               values_to = "measurement")


hr_long = df %>%
  clean_names() %>%
  mutate(birthday = paste(month_of_birth, day_birth, year_birth, sep = "-")) %>%
  select(-month_of_birth, -day_birth, -year_birth) %>%
  select(-starts_with("bp")) %>%
  pivot_longer(cols = starts_with('hr'),
               names_to = 'visit',
               values_to = 'hr') %>%
  mutate(visit = case_when(visit == 'hr_9' ~ '1',
                           visit == 'hr_11' ~ '2',
                           visit == 'hr_13' ~ '3'))

df_clean = full_join(bp_long, hr_long)
View(df_clean)

df_clean2 = df_clean %>%
  mutate(race = case_when(race == 'Caucasian' | race == 'White' ~ 'WHITE,
                           TRUE ~ race'))
View(df_clean2)

library(ggplot2)


df_clean %>%
  ggplot(aes(x = visit,
             y = hr,
             group = pat_id)) +
  geom_point() +
  geom_line()

df_clean %>%
  filter(bp_type == "sys") %>%
  ggplot(aes(x = visit, y = hr, group = pat_id)) +
  geom_point() +
  geom_line()

  # you can also use ends_with() when selecting things


df_clean2 %>%
  ggplot(aes(x = visit,
             y = hr,
             color = race)) +
  geom_path() +
  facet_wrap(~ race)



str_to_lower()
str_to_upper()
str_remove()

## read Bird_Measurement.csv
## How to start analysis

install.packages('skimr')
library(skimr)
library(tidyverse)

df_bird = read.csv('Data/Bird_Measurements.csv')
View(df_bird)
skim(df_bird)

bird_s = skim(df_bird)
View(bird_s)

keep = bird_s %>%
  filter(complete_rate > 0.50) %>%
  pluck('skim_variable')
    
View(keep)

df_m = df_bird %>%
  select(keep, "F_tarsus") %>% 
  select(keep, starts_with('M_')) %>%
  
df_m = df_m %>%
  select(-starts_with('F_')) %>%
  mutate(sex = 'male')
  
df_fm = df_bird %>%
  select(keep, "F_tarsus") %>%
  select(keep, starts_with('F_')) %>%
  
df_fm %>%
  select(-starts_with('F_')) %>%
  mutate(sex = 'male')
  
names(df_m) = names(df_m) %>% str_remove('M_')
names(df_fm) = names(df_fm) %>% str_remove('F_')

identical(names(df_m), names(df_f))

full_join(df_m, df_fm)


######-----------

library(tidyverse)
library(skimr)

df_bird = read.csv('Data/Bird_Measurements.csv')

bird_s = skim(df_bird)

keep = bird_s %>%
  filter(complete_rate > 0.50) %>%
  pull(skim_variable)

# Males: keep good columns, drop female columns
df_m = df_bird %>%
  select(all_of(keep), any_of(c("M_tarsus", "F_tarsus"))) %>%
  select(-starts_with('F_')) %>%
  mutate(sex = 'male')

# Females: keep good columns, drop male columns
df_f = df_bird %>%
  select(all_of(keep), any_of(c("M_tarsus", "F_tarsus"))) %>%
  select(-starts_with('M_')) %>%
  mutate(sex = 'female')

names(df_m) = names(df_m) %>% str_remove('M_')
names(df_f) = names(df_f) %>% str_remove('F_')

identical(names(df_m), names(df_f))   # should be TRUE

df_long = bind_rows(df_m, df_f)

View(df_long)

names(df_long)

df_long %>%
  ggplot(aes(x = Egg_mass,
             y = mass,
             color = sex)) +
  geom_point() +
  geom_line()




penguins %>%
  ggplot(aes(x = body_mass, 
             fill = species)) + 
  geom_density(alpha = 0.5)

penguins %>%
  ggplot(aes(x = body_mass, 
             fill = sex)) + 
  geom_density(alpha = 0.5)

t.test()
?t.test()

t.test(body_mass ~ sex, data = penguins)

aov1 = aov(formula = body_mass ~ species,
    data = penguins)

summary(aov1)

glm()

glm1 = glm(formula = body_mass ~ species,
           data = penguins)

summary(glm1)


avg_body_mass = mean(penguins$body_mass, na.rm = T)

t.test(avg_body_mass ~ sex, data = penguins)

names(penguins)


penguins %>%
  group_by(species) %>%
  summarise(avg_mass = mean(body_mass, na.rm = T))


relevel()
penguins$species = relevil(penguins$species, ref = 'Gentoo')
mod2 = 
  
  
  
  
  
install.packages("easystats")
library(easystats)

# using 'mpg'
# does engine displacement (displ) affect cty? how much?
  
View(mpg)

glm10 = glm(formula = cty ~ displ,
           data = mpg)

summary(glm10)
report(glm10)
performance(glm10)


mpg %>%
  ggplot(aes(x = displ,
             y = cty)) +
  geom_point() +
  geom_smooth(method = 'lm') + 
  annotate(geom = 'text',
           x = 6, y = 30,
           label = 'R^2 = 0.64') +
  scale_x_continuous(limits = c(0,8), expand = c(0,0))

dat_car = 
  
  
  
## build a model to predict cyy
  
  
install.packages("easystats")
library(easystats)  
library(ggplot2)
library(tidyverse)

View(mpg)

mpg %>%
  select(displ, cty, year, cyl, hwy) %>%
  correlation()

mpg %>%
  group_by(drv) %>%
  summarise(avg_cty = mean(cty))

glm1 = glm(cty ~ displ, data = mpg)
summary(glm1)

glm2 = glm(cty ~ displ + drv, data = mpg)
summary(glm2)

glm3 = glm(cty ~ displ + drv + class, data = mpg)
summary(glm3)

compare_models(glm1, glm2, glm3)
compare_performance(glm1, glm2, glm3)

compare_performance(glm1, glm2, glm3) %>% plot()

glm4 = glm(cty ~ displ:cyl) # gives you the interaction between displ & cyl

# displ + cyl + displ:cyl = displ*cyl

mpg %>%
  ggplot(aes(x = displ, y = cty)) +
  geom_point() +
  geom_smooth(method = 'glm')

mpg %>%
  ggplot(aes(x = displ, y = cty, color = factor(cyl))) +
  geom_point() +
  geom_smooth(method = 'glm')
















  ## cty = displ, cyl
## build these three models (simple, additive, interaction)
## predict the cty using each model


mod1 = glm(cty ~ displ, data = mpg) # simple
mod2 = glm(cty ~ displ + cyl, data = mpg) # additive
mod3 = glm(cty ~ displ*cyl, data = mpg) # interaction
  
compare_performance(mod1, mod2, mod3) %>% plot()

mpg %>%
  ggplot(aes(x = displ, y = cty, color = factor(cyl))) +
  geom_point() +
  geom_smooth(method = 'glm')


mpg2 <- mpg

mpg2$pred1 = predict(mod1, mpg2)
plot(mpg2$cty, mpg2$pred1)
cor.test(mpg$displ, mpg$cty)

mpg2$pred2 = predict(mod2, mpg2)
mpg2$pred3 = predict(mod3, mpg2)

mpg2 %>%
  ggplot(aes(x = displ, y = pred1, color = factor(cyl))) + 
  geom_point()

mpg2 %>%
  ggplot(aes(x = displ, y = pred2, color = factor(cyl))) + 
  geom_point()

mpg2 %>%
  ggplot(aes(x = displ, y = pred3, color = factor(cyl))) + 
  geom_point()



View(mpg2)

mpg_long = mpg2 %>%
  pivot_longer(cols = c(pred1, pred2, pred3),   
               names_to = "mod",
               values_to = "prediction")

View(mpg_long)

mpg_long %>%
  ggplot(aes(x = displ, y = prediction, color = factor(cyl))) +
  geom_point() +
  geom_smooth(method = 'glm') +
  facet_wrap(~ mod)
  
# original vs. prediction graph
mpg2 %>%
  pivot_longer(starts_with('pred')) %>%
  ggplot(aes(x = displ, y = cty, color = factor(cyl))) +
  geom_point() +
  geom_point(aes(y = value), color = 'black') +
  facet_wrap(~ name)
  

## build your BEST model to predict cty

mod_best = glm(cty ~ manufacturer*model*displ*year*drv*fl*class, data = mpg)

library(MASS)


step = stepAIC(mod_best)




