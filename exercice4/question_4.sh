#Exercice 4:

        #4)

#rétablir le droit en éxécution du répertoire test:
chmod u+x ./test

#se positioner dans le répertoire test :
cd ./test

#retirer le droit en éxecution du répertoire test :
chmod u-x .

#créer un fichier :
touch nv_file

    #resultat :(
        #touch: impossible de faire un touch 'nv_file': Permission non accordée
    #)

#supprimer un fichier
rm ./essai

    #resultat :(
        #rm: impossible de supprimer './essai': Permission non accordée
    #)

#modifier un fichier
echo "j'éssaye de modifier" > essai

    #resultat :(
        #bash: essai: Permission non accordée
    #)

#se déplacer dans sstest 
cd ./sstest

    #resultat :(
        #bash: cd: ./sstest: Permission non accordée
    #)

#DEDUCTION :
        #les droits en écriture,lecture n'afféctent pas les droits de leurs contenu
        #mais le droit en éxecution affèctent directement les droits en écrtiture,lecture,execution des élèment qui s'y trouve
                

                