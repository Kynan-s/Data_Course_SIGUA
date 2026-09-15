## Assignment 2


# task 4
obj = list.files(path = "Data/", pattern = ".csv$")

# task 5
length(obj)

# task 6
df = read.csv("Data/wingspan_vs_mass.csv")

# task 7
head(df, 5)

# task 8
obj2 = list.files(path = "Data/", pattern = "^b", recursive = TRUE, full.names = TRUE)

# task 9
for (file in obj2) {
  out = readLines(file, n = 1)
  print(out)
}

# task 10
obj3 = list.files(path = "Data/", pattern = "\\.csv$", recursive = TRUE, full.names = TRUE)

for (file in obj3) {
  out = readLines(file, n = 1)
  print(out)
}

