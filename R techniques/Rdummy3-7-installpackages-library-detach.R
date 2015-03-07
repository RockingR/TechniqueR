install.packages("fortunes")
library(fortunes)

# The library is the directory where the packages are installed. Never, ever call a package a library.

fortune("This is R")
fortune(161)
detach(package:fortunes)


###### the code of fortune()
fortune
function (which = NULL, fortunes.data = NULL, fixed = TRUE, showMatches = FALSE, 
          ...) 
{
  if (is.null(fortunes.data)) {
    if (is.null(fortunes.env$fortunes.data)) 
      fortunes.env$fortunes.data <- read.fortunes()
    fortunes.data <- fortunes.env$fortunes.data
  }
  if (is.null(which)) 
    which <- sample(1:nrow(fortunes.data), 1)
  if (is.character(which)) {
    fort <- apply(fortunes.data, 1, function(x) paste(x, 
                                                      collapse = " "))
    which1 <- grep(which, fort, useBytes = TRUE, fixed = fixed, 
                   ...)
    if (length(which1) < 1) 
      which1 <- grep(tolower(which), tolower(fort), useBytes = TRUE, 
                     fixed = TRUE)
    if (showMatches) 
      cat("Matching row numbers:", paste(which1, collapse = ", "), 
          "\n")
    which <- which1
    if (length(which) > 1) 
      which <- sample(which)
  }
  if (length(which) > 1) 
    which <- which[1]
  if (length(which) > 0 && which %in% seq(along = rownames(fortunes.data))) {
    rval <- fortunes.data[which, ]
    class(rval) <- "fortune"
  }
  else {
    rval <- character(0)
  }
  return(rval)
}
<environment: namespace:fortunes>