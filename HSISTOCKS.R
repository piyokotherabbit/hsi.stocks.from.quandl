install.packages("Quandl")
library(Quandl)
install.packages("dplyr")
library(dplyr)
install.packages("pbapply")
library(pbapply)

<<<<<<< HEAD
#Loading my quandl api key
Quandl.api_key("QdYxxsuDbVdE-hkHvhcV")
=======

Quandl.api_key("YOUR_QUANDL_API_KEY_GOES_HERE")
>>>>>>> origin/master

#Loading the code for each HSI consitutients 
HSI.COMP_temp <- c(700,1299,5,939,2318,941,1398,388,3988,883,1,823,2,3,2628,1113,16,11,27,1928,386,688,2388,669,1109,2382,2313,1093,2319,6,2007,857,1177,175,66,288,267,17,12,1997,1088,1038,3328,1044,762,2018,151,19,83,101)
HSI.COMP <- formatC(HSI.COMP_temp, width = 5, flag = "0")
HSI.COMP.LIST <- sapply(HSI.COMP,function(x)paste("HKEX/", HSI.COMP, sep = ""))

#Aquiring datasets from quandl
HSI.STOCKS <- pblapply(HSI.COMP.LIST[1:50], Quandl)
names(HSI.STOCKS) <- HSI.COMP.LIST[1:50]
<<<<<<< HEAD

#Scaling every each numbers
for (i in 1:50) {
  
  HSI.STOCKS[[i]]$`Net Change`<- NULL
  HSI.STOCKS[[i]]$`Change (%)`<- NULL
  HSI.STOCKS[[i]]$Bid <- NULL
  HSI.STOCKS[[i]]$Ask <- NULL
  HSI.STOCKS[[i]]$`P/E(x)`<- NULL
  HSI.STOCKS[[i]]$`Previous Close`<- NULL
  HSI.STOCKS[[i]]$`Lot Size` <- NULL
  HSI.STOCKS[[i]]$Date <- as.character(HSI.STOCKS[[i]]$Date)
  
  HSI.STOCKS[[i]]$`Nominal Price` <- scale(HSI.STOCKS[[i]]$`Nominal Price`)
  HSI.STOCKS[[i]]$High <- scale(HSI.STOCKS[[i]]$High)
  HSI.STOCKS[[i]]$Low <- scale(HSI.STOCKS[[i]]$Low)
  HSI.STOCKS[[i]]$`Share Volume (000)` <- scale(HSI.STOCKS[[i]]$`Share Volume (000)`)
  HSI.STOCKS[[i]]$`Turnover (000)`<- scale(HSI.STOCKS[[i]]$`Turnover (000)`)
}


=======
>>>>>>> origin/master
