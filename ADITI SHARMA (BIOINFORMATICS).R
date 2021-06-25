library(ggplot2)
library(corrplot)
library(dplyr)
library(caTools)
library(?)
install.packages("corrplot")
install.packages("dplyr")
install.packages("dplyr")
install.packages("dplyr")
library(caTools)
library(dplyr)
library(ggplot2)
cancer= read.csv(choose.files(),header = TRUE)
cancer
head(cancer)
str(cancer)
dim(cancer)
glimpse(cancer)
cancer = cancer[-33]
summary(cancer)
dim(cancer)
# no of women affected in begning and malignant stage
cancer%>% count(diagnosis)
#percentages of women affected in begning and malignant stage
cancer%>% count(diagnosis)%>%group_by(diagnosis)
summarise(perc_dx = round(n/569)*100,2)
summarise(perc_dx = round(n/569)*100,2)
summarise(perc_dx = round(n/569)*100,2)
cancer%>% count(diagnosis)%>%group_by(diagnosis)
summarise(perc_dx=round(n/569)*100)
summarise(perc_dx = round(n/569)*100,2))
%>%summarise(perc_dx = round(n/569)*100,2))
#percentages of women affected in begning and malignant stage
cancer%>% count(diagnosis)%>%group_by(diagnosis)%>%
  summarise(perc_dx = round(n/569)*100,2))
#percentages of women affected in begning and malignant stage
cancer%>% count(diagnosis)%>%group_by(diagnosis)%>%summarise(perc_dx = round(n/569)*100,2))
#percentages of women affected in begning and malignant stage
cancer%>% count(diagnosis)%>%group_by(diagnosis)%>%
  summarise(perc_dx = round(n/569*100,2))
#frequency of cancer diagnosis
diagnosis.table = table(cancer$diagnosis)
colors= terrain.colors(2)
#create a pie
diagnosis.prop.table=prop.table(diagnosis.table)*100
diagnosis.prop.df = as.data.frame(diagnosis.prop.table)
pietables = sprint("%5 - %3,1fs",diagnosis.prop.df[,1],
                   diagnosis.prop.table,"%")
pietables = sprintf("%5 - %3,1fs",diagnosis.prop.df[,1],
                    diagnosis.prop.table,"%")
pietables = sprintf("%5 - %3.1fs",diagnosis.prop.df[,1],
                    diagnosis.prop.table,"%")
pietables = sprintf("%5 - %3.1fs",diagnosis.prop.df[,1],
                    diagnosis.prop.table,"%")
pietables = sprintf("%5 - %3.1f%s",diagnosis.prop.df[,1],
                    diagnosis.prop.table,"%")
pietables = sprintf("%s - %3.1f%s",diagnosis.prop.df[,1],
                    diagnosis.prop.table,"%")