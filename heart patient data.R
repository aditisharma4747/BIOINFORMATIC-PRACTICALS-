data = read.csv(choose.files(), header = TRUE)
data

#line graph
x = data[1:15, "chol"]

plot(x,type = "b",col= "red", xlab = "row no",
      ylab = "chol",main = "heart details of cholestrol")

#pie chart
y = data[1:20,"oldpeak"]
lables = data[1:21,"oldpeak"]


#barplot
a = data[1:20,"chol"]
b = data[1:20,"cp"]
barplot(a,names.arg =b,xlab = "cp",ylab = "chol", 
        main = "chol and cp data")

barplot(a,names.arg= a,xlab = "age", ylab = "cp",main = "age of cp data")

#scatter plot
c =data[1:300,c("trestbps","thalach")]


plot(x=data$trestbps,y=data$thalach,xlab = "thalach",ylab ="trestbps",main ="estbps and thalach" )tr

#boxplot
e= data[,c("chol","cp")]
boxplot(chol~cp,data= data,xlab = "chol",ylab = "cp", 
        main = "details of heart patients",col= "purple", "green")




#creating pdf
pdf("heartdisease,plots.pdf")
plot(x,type = "b",col= "red", xlab = "row no",
     ylab = "chol",main = "heart details of cholestrol")
barplot(a,names.arg =b,xlab = "cp",ylab = "chol", 
        main = "chol and cp data")
plot(x=data$trestbps,y=data$thalach,xlab = "thalach",ylab ="trestbps",main ="estbps and thalach" )tr
boxplot(chol~cp,data= data,xlab = "chol",ylab = "cp", 
        main = "details of heart patients",col= "purple", "green")
dev.off()
