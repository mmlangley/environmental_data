here()
require(here)
dat_habitat = read.csv(here("data", "hab.sta.csv"))
dat_habitat = read.csv(here("data", "bird.sta.csv"))
head()

  
hist(dat_habitat$BHGR,
     main = "Histogram of Black-headed Grosbeak Abundance", 
     xlab = "Number of Birds Counted",
      breaks = 6,
      col = "aquamarine")

dat_birds = read.csv("https://michaelfrancenelson.github.io/environmental_data/data/bird.sta.csv") 
dat_habitat = read.csv("https://michaelfrancenelson.github.io/environmental_data/data/hab.sta.csv") 
pairs(dat_habitat[, c("elev", "slope", "aspect")],
      head = "Bird Nesting Sites",
      col = "coral")
warnings()