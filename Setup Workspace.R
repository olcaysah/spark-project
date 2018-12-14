#' Author: Olcay Sahin
#' Date: Thu Dec 13 21:48:03 2018
#' Author Email: osahi001@odu.edu
#' Project: Spark project
#' Info:
#' --------------

##LOADING PACKAGES ###
is.installed <- function(mypkg) is.element(mypkg, installed.packages()[,1])
pkglist <- c('readr','dplyr','data.table','stringr','ggplot2','sparklyr')
for(p in pkglist) if(is.installed(p)==F) install.packages(p, character.only=T)
for(p in pkglist) require(p, character.only=T) 

#spark_available_versions() #see available versions of spark
spark_install(version = "2.3.2") #It was 2.4.0 version when I install spark.

#Connecto to spark:
sc <- spark_connect(master = "local")


#Read the data:
didi_tbl <- copy_to(sc, read_csv("C:/Users/Miray/GitHub_osahi001/DIDI-Challenge/didi_5min_ave_by_day.csv", col_types = cols()))

didi_tbl %>% filter(direction == 'N')
