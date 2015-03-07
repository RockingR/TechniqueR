yourname <- readline("what's your name?")
ls()
getwd()
setwd("C:/Users/Natusme/Desktop/TechniqueR/R techniques") # use Rstudio session to cope
save(yourname, file = "yourname.rda")
rm(yourname)
ls()
load("yourname.rda")
ls()
