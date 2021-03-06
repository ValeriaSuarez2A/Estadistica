#_____________________ MEDIDAS ___________________

# Se trabajar� con la matriz de datos "penguins.xlsx"


#1.- exportacion de matriz

#import dataset/from excel/browser/seleccionar
#archivo/ aceptar/ (visualizar)/import

#2.- Acordar el nombre de la matriz de datos
BD<-penguins

#---------------------------------------------
# Exploracion de la matriz
#---------------------------------------------
dim(BD)
str(BD)
colnames(BD)
anyNA(BD)

#-----------------------------------------------
#      Tendencia central
#-----------------------------------------------

# 1.- Media y mediana
summary(BD)


# 2.- Moda

# 2.1.- Se descarga el paquete "modeest"
install.packages("modeest")
library(modeest)

# 2.2.- Se abre la librer�a
library(modeest)

# 2.3.- C�lculo de la moda para la variable isla y largo del pico
mfv(BD$especie) # categorica
mfv(BD$largo_pico_mm) # numerica


#-----------------------------------------------
#      Medidas de dispersi�n
#-----------------------------------------------

# 1.- C�lculo de la varianza (s�lo para variables cuantitativas)
var(BD$grosor_pico_mm)

# 2.- C�lculo de la desviaci�n est�ndar
sd(BD$grosor_pico_mm)

# 3.- Error
media_pico<-mean(BD$largo_pico_mm)
media_pico


error<-(BD$largo_pico_mm-(media_pico))
error


#4.- Coeficiente de variacion
CV<- sd(BD$largo_pico_mm)/mean(BD$largo_pico_mm)*100
CV

# 5.- Rango intercuartilico (IQR)
IQR(BD$largo_pico_mm)

# 6.- Rango
pico<-BD$largo_pico_mm
pico
max(pico)
min(pico)
rango<-max(pico)-min(pico)
rango

#-----------------------------------------------
#    Medidas de posici�n
#------------------------------------------------

# 1.- Cuartiles
summary(BD)

# 2.- Quintil
quintil<-quantile(BD[["largo_aleta_mm"]], 
                  p=c(.20, .40, .60, .80))
quintil

# 3.- Decil
decil<-quantile(BD[["largo_aleta_mm"]], 
                p=c(.10, .20, .30, .40, .50, .60,
                    .70, .80, .90))
decil

# Percentil
percentil<-quantile(BD[["largo_aleta_mm"]], 
                    p=c(.33, .66, .99))
percentil

# Interpretacion:
# <192 = Bajo
# 192-209 = Intermedio
# > 209 = Alto

#-------------------------------------
#Ejercicio 1
#------------------------------------

#-----------------------------------------------
#      Tendencia central
#-----------------------------------------------

# 1.- Media y mediana
summary(BD)


# 2.- Moda

# 2.1.- Se descarga el paquete "modeest"
install.packages("modeest")
library(modeest)

# 2.2.- Se abre la librer�a
library(modeest)

# 2.3.- C�lculo de la moda para la variable isla y largo del pico
mfv(BD$especie) # categorica
mfv(BD$largo_pico_mm) # numerica


#-----------------------------------------------
#      Medidas de dispersi�n
#-----------------------------------------------

# 1.- C�lculo de la varianza (s�lo para variables cuantitativas)
var(BD$largo_aleta_mm)

# 2.- C�lculo de la desviaci�n est�ndar
sd(BD$largo_aleta_mm)

# 3.- Error
media_pico<-mean(BD$largo_aleta_mm)
media_pico


error<-(BD$largo_aleta_mm-(media_pico))
error


#4.- Coeficiente de variacion
CV<- sd(BD$largo_aleta_mm)/mean(BD$largo_aleta_mm)*100
CV

# 5.- Rango intercuartilico (IQR)
IQR(BD$largo_aleta_mm)

# 6.- Rango
pico<-BD$largo_aleta_mm
pico
max(pico)
min(pico)
rango<-max(pico)-min(pico)
rango

#-----------------------------------------------
#    Medidas de posici�n
#------------------------------------------------

# 1.- Cuartiles
summary(BD)

# 2.- Quintil
quintil<-quantile(BD[["largo_pico_mm"]], 
                  p=c(.20, .40, .60, .80))
quintil

# 3.- Decil
decil<-quantile(BD[["largo_pico_mm"]], 
                p=c(.10, .20, .30, .40, .50, .60,
                    .70, .80, .90))
decil

# Percentil
percentil<-quantile(BD[["largo_pico_mm"]], 
                    p=c(.33, .66, .99))
percentil

