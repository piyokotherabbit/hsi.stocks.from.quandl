install.packages("Quandl")
library(Quandl)
install.packages("dplyr")
library(dplyr)
install.packages("pbapply")
library(pbapply)


Quandl.api_key("QdYxxsuDbVdE-hkHvhcV")

HSI.COMP_temp <- c(700,1299,5,939,2318,941,1398,388,3988,883,1,823,2,3,2628,1113,16,11,27,1928,386,688,2388,669,1109,2382,2313,1093,2319,6,2007,857,1177,175,66,288,267,17,12,1997,1088,1038,3328,1044,762,2018,151,19,83,101)
HSI.COMP <- formatC(HSI.COMP_temp, width = 5, flag = "0")
HSI.COMP.LIST <- sapply(HSI.COMP,function(x)paste("HKEX/", HSI.COMP, sep = ""))

HSI.STOCKS <- pblapply(HSI.COMP.LIST[1:50], Quandl)
names(HSI.STOCKS) <- HSI.COMP.LIST[1:50]