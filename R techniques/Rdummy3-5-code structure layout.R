baskets.of.Geraldine <-
  c(5,3,2,2,12,9)
baskets.of.Granny <- 4:8
Intro <- "It is amazing! The All Star Grannies scored
a total of"
Outro <- "baskets in the last six games!"
Total.baskets <- baskets.of.Granny +  
  baskets.of.Geraldine
Text <- paste(Intro,
              sum(Total.baskets),
              Outro)
cat(Text)
Text

cat('If you doubt whether it works, 
+ just try it out.') # there is no + is needed here

cat('If you doubt whether it works,
just try it out.')

# if you don’t use RStudio, remember to add a line break (or the symbol \n)
