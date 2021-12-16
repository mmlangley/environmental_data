require(palmerpenguins)
t.test(subset(penguins, species == "Gentoo")$flipper_length_mm)
t.test(
  x = subset(penguins, species == "Gentoo")$flipper_length_mm,
  mu = 218
)
t.test(
  x = subset(penguins, species == "Gentoo")$flipper_length_mm,
  mu = 218,
  alternative = "less"
)

t.test(flipper_length_mm ~ species, data = subset(penguins, species != "Chinstrap"))

par(mfrow = c(1, 2))
hist(penguins$body_mass_g, breaks = 80, main = "histogram of body mass", xlab = "body mass (g)")
plot(density(penguins$body_mass_g, na.rm = TRUE), main = "density plot of body mass")

boxplot(body_mass_g ~ species, data = penguins)

dat_chinstrap = subset(penguins, species == "Chinstrap")
mean(dat_chinstrap$body_mass_g, na.rm = TRUE)

shapiro.test(dat_chinstrap$body_mass_g)

aggregate(body_mass_g ~ species, data = penguins, FUN = mean)

aggregate(
  body_mass_g ~ species,
  data = penguins,
  FUN = function(x) shapiro.test(x)$p.value)

fit_species = lm(body_mass_g ~ species, data = penguins)
summary(fit_species)

anova(fit_species)

fit_species = lm(body_mass_g ~ species, data = penguins)
summary(fit_species)

fit_additive = lm(body_mass_g ~ sex + species, data = penguins)

fit_interactive = lm(body_mass_g ~ sex .....)

boxplot(body_mass_g ~ sex * species, data = penguins
main = "Penguin Body Mass Based on Sex and Species", 
las = 2,
ylab = "Body Mass"
names = c("Adelie \n female",
          "Adelie \n male",
          "Adelie \n female"
          "Chinstrap \n male",
          "Gentoo \n female",
          "Gentoo \n male")

boxplot(body_mass_g ~ sex * species, data = penguins,main = "Body Mass: Sex and Species", las = 2, ylab = "Body Mass (g)", xlab = " ",
names = c("Adelie\nfemale", "Adelie\nmale","Chinstrap\nfemale","Chinstrap\nmale", "Gentoo\nfemale","Gentoo\nmale"))
          
fit_interactive = lm(body_mass_g ~ sex * species, data = penguins)
boxplot(body_mass_g ~ species * sex, data = penguins)
help(names)
