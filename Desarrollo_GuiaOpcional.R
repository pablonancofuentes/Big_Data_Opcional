#Ejercicio1#

Data_Nomofobia <- read_excel("Data_Nomofobia.xlsx")

summary(Data_Nomofobia)

hist(Data_Nomofobia$Nomofobia)
hist(Data_Nomofobia$Ansiedad)
hist(Data_Nomofobia$Estrés)
hist(Data_Nomofobia$Compulsividad)
hist(Data_Nomofobia$`Habilidades blandas`)
hist(Data_Nomofobia$`Resolución de conflictos`)
hist(Data_Nomofobia$`Tiempo de uso del celular`)
hist(Data_Nomofobia$Edad)


#Ejercicio2#

library(moments)
skewness(Data_Nomofobia[-8])
kurtosis(Data_Nomofobia[-8])
par(mfcol=c(2,4))
qqnorm(Data_Nomofobia$Nomofobia)
qqnorm(Data_Nomofobia$Ansiedad)
qqnorm(Data_Nomofobia$Estrés)
qqnorm(Data_Nomofobia$Compulsividad)
qqnorm(Data_Nomofobia$`Habilidades blandas`)
qqnorm(Data_Nomofobia$`Resolución de conflictos`)
qqnorm(Data_Nomofobia$Edad)

#Ejercicio3#

RegresionCompleta<-lm(Data_Nomofobia$Nomofobia~Data_Nomofobia$Ansiedad+Data_Nomofobia$Compulsividad+Data_Nomofobia$Estrés+Data_Nomofobia$`Habilidades blandas`+Data_Nomofobia$`Resolución de conflictos`+Data_Nomofobia$`Tiempo de uso del celular`+Data_Nomofobia$Género+Data_Nomofobia$Edad)
RegresionCompleta


#Ejercicio5#

ANOVA1<-aov(Data_Nomofobia$Nomofobia~Data_Nomofobia$Ansiedad+Data_Nomofobia$Compulsividad+Data_Nomofobia$Estrés+Data_Nomofobia$`Habilidades blandas`+Data_Nomofobia$`Resolución de conflictos`+Data_Nomofobia$`Tiempo de uso del celular`+Data_Nomofobia$Género+Data_Nomofobia$Edad)
summary(ANOVA1)

#Ejercicio6#

hist(Data_Nomofobia$Nomofobia)
boxplot(Data_Nomofobia$Ansiedad)
barplot(Data_Nomofobia$Estrés)

#Ejercicio7#

par(mfcol=c(2,4))
boxplot(Data_Nomofobia$Nomofobia,main= "Nomofobia")
boxplot(Data_Nomofobia$Ansiedad,main= "Ansiedad")
boxplot(Data_Nomofobia$Estrés,main= "Estres")
boxplot(Data_Nomofobia$Compulsividad,main= "Compulsividad")
boxplot(Data_Nomofobia$`Habilidades blandas`,main= "Habilidades Blandas")
boxplot(Data_Nomofobia$`Resolución de conflictos`,main= "Resolucion de Conflictos")
boxplot(Data_Nomofobia$Edad,main= "Edad")
boxplot(Data_Nomofobia$Nomofobia~Data_Nomofobia$Género,main= "Genero")


#Ejercicio8#

DatosFinal<-Data_Nomofobia[c(-5,-11,-106),]
DatosFinal_Sin_Negativosa<-DatosFinal[c(-46,-41,-126,-31),]
