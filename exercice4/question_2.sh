#Exercice 4:

     #2)
    #Note : nos commandes s'excute depuis test et non depuis home!!

#Créer dans test un fichier nouveau et un répertoire sstest :
touch nouveau 
mkdir sstest

#Rétirer les droits :

    #pour le fichier nouveau :
        chmod u-w nouveau
    #pour le repertoire test :
        chmod u-w . 

#Tentons de modifier le fichier nouveau :
echo "J'ÉSSAYE DE CHANGE NOUVEAU !!" >> nouveau

    # resultat : (
        #bash: nouveau: Permission non accordée
    #) 

#Rétablir le droit en écriture au répertoire test :
chmod u+w . 

#Tentons de supprimer le fichier nouveau :
rm ./nouveau 

    #resultat :(
        #rm : supprimer './nouveau' qui est protégé en écriture et est du type « regular empty file » ? y
    #)

#DÉDUCTION :
    #le droit en écriture d'un fichier constite à écrire son contenu
    #le droit en écriture d'un dossier consiste à créer ou de supprimer les sousrepertoires ou les fichiers qui s'y trouve
    #le droit en écriture d'un fichier ne dépend pas du droit d'écriture du repertoire où il se trouve

    
