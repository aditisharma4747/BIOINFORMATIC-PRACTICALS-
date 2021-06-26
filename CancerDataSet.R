library(ggplot2)
library(corrplot)
library(dplyr)
library(caTools)
install.packages("dplyr")
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
cancer%>% count(diagnosis)%>%group_by(diagnosis)%>%
summarise(perc_dx = round(n/569*100,2))

#data visulization

#frequency of cancer diagnosis
diagnosis.table = table(cancer$diagnosis)
colors= terrain.colors(2)


#create a pie
diagnosis.prop.table=prop.table(diagnosis.table)*100
diagnosis.prop.df = as.data.frame(diagnosis.prop.table)

pietables = sprintf("%s - %3.1f%s",diagnosis.prop.df[,1],
                    diagnosis.prop.table,"%")
pie(diagnosis.prop.table,lables= pietables,clockwise = TRUE ,col= c("purple","red"),
    radius = 0.8,cex = 1.5,main ="frequency of cancer diagnosis",borders = "black")

legend(1,0.2,legend = diagnosis.prop.df[,2],
       cex =0.7,fill = c("purple","red"),border ="black")

#CORRELATION PLOT

c= cor(cancer[,3:25])
corrplot(c,order("hclust",tl.cex=0.7)
         corrplot(c,order = "hclust",tl.cex = 0.7)
         corrplot(c,method = "square",tl.cex = 1.5)
         
#comparing the radius of benign and malignant stage           
ggplot(cancer,aes(x = diagnosis ,y = radius_mean))+ geom_boxplot(fill = "yellow")
ggtitle("radius_mean for benign")
         
#barplot
ggplot(cancer,aes(x = diagnosis,fill =texture_mean))+
geom_bar(fill="pink")+ggtitle("people affected with and malignant")
         
#density plot based on texture and mean
         ggplot(cancer,aes(x= texture_mean,fill = as.factor(diagnosis)))+
           geom_density()+ggtitle("texture_mean")
         
#barplot for area_se
ggplot(cancer,aes(x =diagnosis, fill = area_se))+
           geom_bar(fill="pink")+ggtitle("AREA_SE")
         
#distribution of data via histrogram
ggplot(cancer,aes(x = concavity_mean,fill= diagnosis))+
geom_histogram(binwidth = 5)+ggtitle("concavity mean")
ggplot(cancer,aes(x = perimeter_mean))+ facet_wrap(~diagnosis)+
           geom_histogram(binwidth = 5,col="red",fill= "blue")+ggtitle("perimeter")
         
#creating pdf
pdf("cancerDataFinal.pdf")
pie(diagnosis.prop.table,lable= pietables,clockwise = TRUE ,col= c("purple","red"),
    radius = 0.8,cex = 1.5,main ="frequency of cancer diagnosis",borders = "black")

legend(1,0.2,legend = diagnosis.prop.df[,2],
       cex =0.7,fill = c("purple","red"),border ="black")
corrplot(c,order("hclust",tl.cex=0.7)
         corrplot(c,order = "hclust",tl.cex = 0.7)
         corrplot(c,method = "square",tl.cex = 1.5)
         
ggplot(cancer,aes(x = diagnosis ,y = radius_mean))+ geom_boxplot(fill = "yellow")
         ggtitle("radius_mean for benign")
         
ggplot(cancer,aes(x = diagnosis,fill =texture_mean))+
           geom_bar(fill="pink")+ggtitle("people affected with and malignant")

ggplot(cancer,aes(x= texture_mean,fill = as.factor(diagnosis)))+
  geom_density()+ggtitle("texture_mean")

ggplot(cancer,aes(x =diagnosis, fill = area_se))+
  geom_bar(fill="pink")+ggtitle("AREA_SE")

ggplot(cancer,aes(x = concavity_mean,fill= diagnosis))+
  geom_histogram(binwidth = 5)+ggtitle("concavity mean")

ggplot(cancer,aes(x = perimeter_mean))+ facet_wrap(~diagnosis)+
  geom_histogram(binwidth = 5,col="red",fill= "blue")+ggtitle("perimeter")
dev.off()
