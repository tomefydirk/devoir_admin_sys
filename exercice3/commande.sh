#exercice 3:

#-----1)

    #créer un repetoire test :
mkdir test

    #créer un fichier essai dans test et ecrire une phrase :
echo "une phase" > ./test/essai 


#-----2)

    #noter les permissions actuelles du repertoire:
ls -l | grep test

    #noter les permissions du fichier esssai :
ls -l ./test/essai  #(*ou ls -l ./test| grep essai )

#-----3)

    #retirer le droit en lecture et en écriture sur le fichier essai :
chmod u-rw ./test/essai

    #vérification :
cat ./test/essai
echo "test de droit" > ./test/essai

#-----4)

    #rétablir le droit en écriture :
chmod u+w ./test/essai 

    #remplacer le contenu de essai :
echo "Ceci est un essai" > ./test/essai 
    
    #ajouter le droit en exécution :
chmod u+x ./test/essai

    #Éxectution du fichier essai :
./test/essai
            #resultat :: { /usr/bin/bash: ./test/essai: Permission non accordée }

#-----5)

    #remettre le droit en lecture :
chmod u+r ./test/essai

    #executer :
./test/essai 
           #resultat :: {./test/essai: ligne 1: Ceci : commande introuvable }

    #proposition ecrire une commande dans le fichier par exemple :
echo "echo \"Ceci est un essai .\"" > ./test/essai
