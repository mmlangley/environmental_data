here()
require(here)
dat_habitat = read.csv(here("data", "hab.sta.csv"))
par(mfrow = c(1, 3))
hist(dat_habitat$aspect, main = "Aspect", xlab = "Aspect (degrees)", breaks = 180)
hist(dat_habitat$elev, main = "Elevation", xlab = "Elevation (m)")
hist(dat_habitat$slope, main = "Slope", xlab = "Slope (%)")
par(mfrow = c(1, 3))

line_point_slope = function(x, x1, y1, slope)
{
    get_y_intercept = 
        function(x1, y1, slope) 
            return(-(x1 * slope) + y1)
    
    linear = 
        function(x, yint, slope) 
            return(yint + x * slope)
    
    return(linear(x, get_y_intercept(x1, y1, slope), slope))
}

par(mfrow = c(1, 3))
hist(dat_habitat$aspect, main = "Aspect", xlab = "Aspect (degrees)", breaks = 180)
hist(dat_habitat$elev, main = "Elevation", xlab = "Elevation (m)")
hist(dat_habitat$slope, main = "Slope", xlab = "Slope (%)")
plot(x = dat_habitat$aspect, y = dat_habitat$ba.tot, 
     main = "Aspect and Basal Area", 
     xlab = "Aspect (degrees)", 
     ylab = "Total Basal Area (m2 per ha)",
     cex = .05)
    curve(line_point_slope(x, x1 = 150, y1 = 25, slope = .1), add = TRUE, col = "aquamarine", lwd = 2)
plot(x = dat_habitat$elev, y = dat_habitat$ba.tot, 
     main = "Elevation and Basal Area", 
     xlab = "Elevation (m)", 
     ylab = "Total Basal Area (m2 per ha)",
     cex = .05)
     curve(line_point_slope(x, x1 = 450, y1 = 25, slope = .05), add = TRUE, col = "orange")
plot(x = dat_habitat$slope, y = dat_habitat$ba.tot, 
     main = "Slope and Basal Area", 
     xlab = "Slope (%)", 
     ylab = "Total Basal Area (m2 per ha)",
     cex = .05)
     curve(line_point_slope(x, x1 = 70, y1 = 34, slope = .4), add = TRUE, col = "purple", lwd = 2)
     
mean(dat_habitat$slope)
par(mfrow = c(1, 3))
