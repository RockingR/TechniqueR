## simple version on future prediction
setwd("C:/Users/Natusme/Desktop/TechniqueR/R techniques")
source("myPL-function.R")
jgb <- data.frame(prices = 1.155, shares = 5000) # pt = c(1.33, 1.298, 1.27))
jgb#


myPL.effi(jgb$prices, jgb$shares, 1.177 )
# 50ETF
myPL(88000, 2.4, 80000, 2.165, 80000, 1.955, 80000, 1.6, 2)

# ½ðÈÚB
myPL(85000, 1.18, 85000, 1.052, 85000, 0.872, 85000, 0.6, 1.18)


## more realistic approach 
# first entry average price at 2.390, 
# second entry period: 

test1.50ETF <- c(88000, 2.4, 
                 80000, 2.165, 
                 80000, 1.955, 
                 80000, 1.6)
test1.50ETF <- matrix(test1.50ETF, byrow = T, ncol = 2)
colnames(test1.50ETF) <- c("shares", "prices")
rownames(test1.50ETF) <- NULL
class(test1.50ETF)
prices <- test1.50ETF[ , 2]
shares <- test1.50ETF[ , 1]
diff.prices <- diff(prices) 
diff.ratio <- -diff.prices/prices[-4]
diff.ratio


test1.B <- c(85000, 1.18, 85000, 1.052, 85000, 0.872, 85000, 0.6, 1.18)