
#___________Tablas de frecuencias____________

#1.- Importar la matriz iris

data(iris)

# 2.- Exploración de la matriz
# dimensión de la matriz tiene 150 induviduos y 5 variables
dim(iris)

# 3.- Nombre de las variables
colnames(iris)

# 4.- Tipos de variables
str(iris)

# 5.- Visualización de una variables especifica
iris$Species

# 6.- En busca de valores perdidos
anyNA(iris)


#-- - - - - - - - - -  - - - - - - - - - - - - - -
#         Generación de tablas de frecuencia
#--------------------------------------------------

# 1.- Posicionarnos en una variables especifica Petal.Lenght indico que
# el nombre se lo acorte a PL. lo que resulte de esa indicación quiero que
# lo pongan en formato tabla, lo que resulte adquiera un formato de data.frame
# a partir de lo anterior, voy a generar una nueva variables (objeto)
# tabla_PL.
tabla_PL<-as.data.frame(table(PL=iris$Petal.Length))

# 2.- Frecuencia absoluta
tabla_PL

# 3.- Se construye la tabla de frecuencia completa redondenado
# a 3 decimales.

transform(tabla_PL,
          freqAC=cumsum(Freq),
          Rel=round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))


# 4.- Agrupación de variables 8 clases
tabla_clase<-as.data.frame(table(Petal.lenght=factor(cut(iris$Petal.Length,
                                                         breaks = 8))))
# 5.- Visualización de la tabla
tabla_clase

# 6.- Construcción de tabla de frecuencias completa redondeado a 3 decimales
tabla<-transform(tabla_clase,
          freqAC=cumsum(Freq),
          Rel=round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))

# 7.- Visualizar la tabla
tabla




