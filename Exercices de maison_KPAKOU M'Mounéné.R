# importations des données
##Type csv
chemin="E:\\KPAM ISEP 2\\Semestre 4\\Programmation R\\Cours R 2023"
file=paste0(chemin,"/Base1R.csv")
Base=read.csv2(file)
View(Base)  
reg=Base$Regions
table(reg)
#Importation de données depuis un fichier texte
Base1=read.table("Base1Rtxt.txt",header=TRUE,sep="")
#Manipulation des données
# selection des variable
age<-Base$Ages
View(age)
#selctionnons les personnes ayant plus de 20 ans
vingtans<-Base[Base$Ages>20,]
vingtans<-Base[age>20,]
print(vingtans)
#aggregeons les données par regions
age_moy_reg<-aggregate(Base$Ages,by=list(Base$Regions),FUN=mean)
print(age_moy_reg)


######Satstistiques descriptives
#calculons la moyennes des ages
mean_age=mean(Base$Ages)
print(mean_age)
#calculons la note moyenne
notes_mean=mean(Base$Notes)
print(notes_mean)
#calculs des ecarts types
ecartype_age=sd(Base$Ages)
print(ecartype_age)

####Manipulation des données avec dplyr et tidyr
#filtrons les individus ayant plus de 20 ans et ayant une notes superieurs à 10
library(dplyr)
vingtans_notes_sup10<-Base%>%filter(Ages>20,Notes>10)
print(vingtans_notes_sup10) 
#### Visualisation des données
library(ggplot2)
## histogramme de l'age des clients
ggplot(Base,aes(x=Ages))+geom_histogram()
#Nuage des points
ggplot(Base,aes(x=REVENU,y=Ages))+geom_point()
# Graphique en boîtes de l'âge par rapport à la région
ggplot(Base, aes(x = Regions, y = Ages)) + 
  geom_boxplot()
#carte thermique
# Créer une matrice de données
matrice <- matrix(c(2, 5, 3, 6, 4, 7, 5, 8, 6), ncol = 3)

# Créer la carte thermique
heatmap(matrice, main = "Carte thermique des données")
