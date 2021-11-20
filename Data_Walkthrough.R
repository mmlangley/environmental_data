here()
require(here)
catrate = read.csv(here("data", "catrate.csv"))
delomys = read.csv(here("data", "delomys.csv"))
rope = read.csv(here("data", "rope.csv"))
hist(catrate$cat.rate, main = "Cat.Rate", 
hist(delomys$body_mass)
hist(rope$p.strength)
plot(x = delomys$body_mass, y = delomys$body_length, 
     main = "Melissa Langley Delomys", 
     xlab = "Body Mass", 
     ylab = "Body Length")