here()
require(here)
catrate = read.csv(here("data", "catrate.csv"))
head(catrate)
summary(catrate)
hist(catrate$cat.rate,
main = "Langley Histogram of Catastrophe Rate",     
xlab = "Catastrophe Rate")

help("shapiro.test")
shapiro.test(catrate$cat.rate)

help(t.test)
t.test(catrate$cat.rate, alternative = "g", mu = 2/7)

t.test(catrate$cat.rate, mu = 2/7, alternative = "g")

wilcox.test(catrate$cat.rate, mu = 2 / 7)

require(palmerpenguins)
penguin_dat = droplevels(subset(penguins, species != "Gentoo"))
summary(penguin_dat)
boxplot(
  flipper_length_mm ~ species, 
  data = penguin_dat,
  ylab = "Flipper Length (mm)")

help("shapiro.test")
dat_adelie = subset(penguin_dat, species == "Adelie")
dat_chinstrap = subset(penguin_dat, species == "Chinstrap")
shapiro.test(dat_adelie$flipper_length_mm)
shapiro.test(dat_chinstrap$flipper_length_mm)
par(mfrow = c(1, 2))
hist(dat_chinstrap$flipper_length_mm,
     main = "Chinstrap Flipper Length", 
     xlab = "Flipper Length (mm)") 
hist(dat_adelie$flipper_length_mm,
     main = "Adelie Flipper Length", 
     xlab = "Flipper Length (mm)") 
par(mfrow = c(1, 2))