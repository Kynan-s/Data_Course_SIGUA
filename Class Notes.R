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





    