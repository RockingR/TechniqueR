myPL <- function(s1, p1, s2, p2, s3, p3, s4, p4, pt) {
  message("prices need to be p1>p2>p3>p4>pt")
  pl1 <- (p1 - pt)/p1
  pl2 <- (p2 - pt)/p2 
  pl3 <- (p3 - pt)/p3
  pl4 <- (p4 - pt)/p4
  # pl <- (prices-pt)/prices
  
  total <- round((p1*s1 + p2*s2 + p3*s3 + p4*s4), digits = 2)
  # total <- round(sum(prices * shares), digits = 2)
  
  pltotal <- -(pl1*s1 + pl2*s2 + pl3*s3 + pl4*s4)
  # pltotal <- -sum(pl * shares)
  
  plratio <- paste("return ratio: ", round(pltotal/total*100, digits=2), "%", sep = "")
  
  pavg <- total/(s1 + s2 + s3 + s4)
  # pavg <- total/sum(shares)
  
  print(paste("total asset: ", total, sep = ""))
  print(paste("average price: ", round(pavg, digits = 2), sep = ""))
  print(paste("total profit/loss: ", round(pltotal, digits = 2), sep = ""))
  print(plratio)
  
} 

myPL.effi <- function(prices, shares, pt) {
  pl <- (prices-pt)/prices
  total <- round(sum(prices * shares), digits = 2)
  
  pltotal <- -sum(pl * shares)
  
  plratio <- paste("return ratio: ", round(pltotal/total*100, digits=2), "%", sep = "")
  
  pavg <- total/sum(shares)
  
  myPL <- data.frame(total.asset = total, 
                     average.price = pavg, 
                     total.pl = pltotal, 
                     return.ratio = plratio)
#   print(paste("total asset: ", total, sep = ""))
#   print(paste("average price: ", round(pavg, digits = 2), sep = ""))
#   print(paste("total profit/loss: ", round(pltotal, digits = 2), sep = ""))
#   print(plratio)
  myPL
} 

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
prices
shares
myPL.effi(prices, shares, pt = 2.1)

# myPL(88000, 2.4, 80000, 2.167, 80000, 1.952, 80000, 1.6, 2.1)
