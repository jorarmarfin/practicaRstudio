#Practica
install.packages("dplyr")
library("dplyr")


data<-read.csv("csv/data.csv")
head(data)

filter(data,sexo=="mujer")
d$estudios=factor(d$estudios, labels=c("bajo", "medio", "alto"))
data$sexo=factor(data$sexo,labels = c("mujer","varon"))

#muestra columnas puede ser nombre o numero de columna
select(data,nombre,2)

grupo1<-group_by(data,sexo)
summarise(grupo1,n())

#tabla de doble entrada
tbl1<-table(data$sexo,data$edad)
tbl1
