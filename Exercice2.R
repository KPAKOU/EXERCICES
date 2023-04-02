#importation des données
chemin="E:\\KPAM ISEP 2\\Semestre 4\\Programmation R\\Cours R 2023"
file=paste0(chemin,"/Chefmenage.csv")
Base=read.csv2(file)
View(Base) 
#4-description des variables
summary(Base)
summary(Base$age)
summary(Base$sexe)
summary(Base$occupation)
#5-creation de la variable classe d'age
Base$classe_age=cut(Base$age,breaks = c(18,30,50,Inf),labels=c("18-30","30-50","Sup 50"))
# Créer une sous-base ne contenant que les femmes
sous_base_femmes <- subset(Base, sexe == "F")             
View(sous_base_femmes)                    
##faisons une analyse croisée
#sexe et occupation
table_sexe_occupation=table(Base$sexe,Base$occupation)
print(table_sexe_occupation)
#output 8 hommes sur 1O sont occupés
#sexe et situation matrimoniale
table_sexe_situationmatri=table(Base$sexe,Base$situation.matri)
print(table_sexe_situationmatri)
#output 9 femmes sur 10 sont mariées
