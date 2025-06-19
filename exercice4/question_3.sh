#Exercice 4:

    #3)
    #si le dossier test se trouve dans votre repertoire personnels {
    
        #se positioner dans son repertoire personnels :
        cd
    # }   

    #sinon {
        cd ../
    #} 

#retirer le droit en éxecution du répertoire test :
chmod u-x ./test

#créer un fichier dans le repertoire test:
touch ./test/nv_fichier_dans_test #resultat :(touch: impossible de faire un touch './test/nv_fichier_dans_test': Permission non accordée)

#supprimer un fichier dans le repertoire test:
rmdir ./test/sstest #resultat :(rmdir: impossible de supprimer './test/sstest': Permission non accordée)

#modifier un fichier dans le repertoire test:
rm ./test/essai #resultat :(rm: impossible de supprimer './test/essai': Permission non accordée)

#se déplacer dans le repertoire test :
cd ./test  #resultat : (bash: cd: ./test: Permission non accordée)

#copier un fichier :
cp -f ./test/essai ./ #resultat  : (cp: impossible d'évaluer './test/essai': Permission non accordée)

#lister le contenu de test:
ls ./test #resultat :(
#        ls: impossible d'accéder à './test/valy.txt': Permission non accordée
#        ls: impossible d'accéder à './test/essai': Permission non accordée
#        ls: impossible d'accéder à './test/sstest': Permission non accordée
#        total 0
#        -????????? ? ? ? ?              ? essai
#        d????????? ? ? ? ?              ? sstest
#        -????????? ? ? ? ?              ? valy.txt
#)

#regarder un fichier dans test :
cat ./test/essai  #(cat: ./test/essai: Permission non accordée)

#DEDUCTION :
        #droit d'éxecution d'un repertoire :

                #permission de créer / retirer / modifier / copier un fichier ou un dossier dans ce repertoire
                    #(*sans cela on ne peut ni créer,ni retirer ni modifier le contenue du repetoire)

             
                #permission de voir les informations des éléments qui s'y trouve :
                    #on peut lister sans détails concrète (ex : date de création,droit,inode...)    
                    #(*permission d'évaluer)

                #plus généralement elle empeche aussi l'éxecution et la lecture des éléments qui s'y trouve      
