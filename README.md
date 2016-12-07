# ProjetPGSQL
Projet de base de données postgres SQL
Utiliser le modèle relationnel du TP 'Skieurs'

# Question 1:
Fonction qui calcule et retourbe l'altitude moyenne des stations

# Question 2:
Fonction qui formalise (1ere lettre maj, reste min) un nom passé en paramètre
    -> DUPOND => Dupond
    
# Question 3:
Fonction qui formalise les noms de tous les skieurs, retourne le nombre de lignes traitées

# Question 4:
Soit une table PENALISES(noSkieur, idCompet) qui recense un ensemble de skieurs pénalisés pour une compétitiion.
Ecrire une fonction qui déclasse les skieurs présents dans la table PENALISES.
Declasser = mettre en dernière position; les autres skieurs restent inchangés

# Question 5:
Trigger de vérification lors de l'insertion d'une nouvele station. Ce trigger vérifiera qu'aucune donnée n'est NULL et altitude>0

# Question 6:
Trigger qui save les changements de noms des skieurs, l'ancien nom est sauvegardé dans une table ANCIENNOM(noSkieur, ancienNom,dateChangement)


# BONUS:
Modifier la fonction 4 our que le classement des autres skieurs soit mis à jour
