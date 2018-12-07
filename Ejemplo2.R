Clima = c(1,1,1,1,1,2,2,2,2,2)
Crecimiento = c(350,375,360,400,380,500,530,520,550,545)
rm(a)

Clima
Crecimiento

#La función cbind() significa 'collumn bind' y unirá las dos tablas en columnas
tbl<-data.frame(cbind(Clima,Crecimiento))
head(tbl)

tbl$Clima<-factor(tbl$Clima,c(1,2),c("Frio","calido"))

unique(tbl$Clima)
plot(iris)
summary(iris) 
dim(iris)
head(iris)

head(Titanic)
