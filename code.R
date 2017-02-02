library(readxl)
# http://novicemetrics.blogspot.com/2011/04/merging-multiple-data-files-into-one.html

setwd("../Research/data")
files = list.files(path = ".")
datalist = lapply(files, read_excel)
pems_dat = Reduce(function(x,y) {merge(x,y, all = T)}, datalist)