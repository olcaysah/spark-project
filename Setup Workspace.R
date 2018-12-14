#' Author: Olcay Sahin
#' Date: Thu Dec 13 21:48:03 2018
#' Author Email: osahi001@odu.edu
#' Project: Spark project
#' Info:
#' --------------

##LOADING PACKAGES ###
is.installed <- function(mypkg) is.element(mypkg, installed.packages()[,1])
pkglist <- c('readr','dplyr','data.table','stringr','ggplot2','sparklyR')
for(p in pkglist) if(is.installed(p)==F) install.packages(p, character.only=T)
for(p in pkglist) require(p, character.only=T) 