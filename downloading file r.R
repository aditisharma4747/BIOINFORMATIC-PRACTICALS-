#Downloading A file
download.file ("https://raw.githubusercontent.com/Nikitasoni1802/Bioinformatics_Practicals/master/mydata.tsv",destfile = "mydata.tsv" )
x =read.table ("mydata.tsv")
head(x)
str(x)
class(x)

x = read.table("mydata.tsv",header= TRUE)
head(x)
x =read.table("mydata.tsv",header = TRUE ,stringsAsFactors = FALSE,row.names = 1)
head(x)
str(x)
dim(x)

library(ape)
library(seqinr)
library(ggplot)
library(class)
