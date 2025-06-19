#Exercice 4:

    #1)
    #création du répertoire test :
    mkdir test
    cd ./test

    #creation des fichier valy et essai dans test :
    echo "ceci se trouve à l'intérieur de test" >> valy.txt 
    echo "ceci se trouve à l'intérieur de test" >> essai
    #Note : nos commandes s'excute depuis test et non depuis home!!



#enlever le droit en lecture du droit en lecture test:
chmod u-r .

#voir les droit en lecture :
ls -l ../ | grep test 

#lister le repertoire:
ls -l 

    #resultat:(
        #ls: impossible d'ouvrir le répertoire '.': Permission non accordée
    #)

#executer ou afficher le contenu du fichier essai :
cat ./essai 

    #Résultat :(
        #ceci se trouve à l'intérieur de test
    #)

#DEDUCTION :
    #-droit en lecture pour le dossier = lecture des informations (info par défaut de ls) sur les fichiers ou dossier qui s'y trouve
    #droit en lecture pour fichier = contenu du fichier
    #PLUS IMPORTANT :
                #meme si on ne peut pas lire un dossier , on peut néanmoins lire ou executer les fichiers qui s'y trouve 


#Retablir le droit en ecriture sur le repertoire test :
chmod u+r .
                
#voir les droit en lecture :
ls -l ../ | grep test 

                #REMARQUE : LE FICHIER VALY NE FAIT PAS PARTIE DU SUJET MAIS CELA EST PLUS UTILE
