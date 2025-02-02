install.packages("here")
install.packages("palmerpenguins")
require(palmerpenguins)
require("here")
class(penguins)
penguins = data.frame(penguins)
mean(penguins$body_mass_g)
head(penguins)
na.rm = TRUE  
mean(penguins$body_mass_g)
summary(penguins)
boxplot(penguins$bill_depth_mm)
boxplot(bill_depth_mm ~ sex, data = penguins)
par(mfrow = c(1, 2))
boxplot(penguins$bill_depth_mm)
boxplot(bill_depth_mm ~ sex, data = penguins)
coplot(body_mass_g ~ bill_depth_mm | sex, data = penguins)
coplot(bill_length_mm ~ bill_depth_mm | island, data = penguins)
require(here)
png(filename = here("basic_histogram.png"), width = 800, height = 600)
hist(penguins$body_mass_g)
dev.off()