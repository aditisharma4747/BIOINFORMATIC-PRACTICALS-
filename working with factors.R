# working with factors
g = c("M","M","F","F" ,"M")

g
g = as.factor(c("M","M","F","M"))
g
f= factor(c("early","ontime","late"),levels = c("early","ontime","late") ,ordered =TRUE)
f
str(f)
as.character(f)
as.numeric(f)




