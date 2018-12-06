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
class(tbl1)
write.csv(tbl1,"export/tbl1.csv",sep = ";")

#Concetar a Base de Datos
install.packages("RMariaDB")
#hay que instalar libmariadbclient-dev | libmariadb-client-lgpl-dev (Debian, Ubuntu)
#rpm: mariadb-connector-c-devel | mariadb-devel | mysql-devel (Fedora, CentOS, RHEL)
library(RMariaDB)
#Loading required package: DBI
con <- dbConnect(MySQL(), group="mydrupal")
dbListTables(con)

query <- dbGetQuery(con,statement="SELECT * FROM users");
sql<-"SELECT * FROM users limit 1"
query2<-dbGetQuery(con,sql)

