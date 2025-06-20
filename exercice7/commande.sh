#commande sur umask (*à faire!!)

#defintion de umask :
        # umask permet de quoi :
            
            #DEFINITION :definir les droits par défaut pour un repertoire :{

                    #les fichier déja créé ne sont pas affeté
                    #seul les fichier qui seront créer aprés le mask auront ce droit

            #}
            #FONCTIONEMENT : retirer les droits d'un dossier ou un fichier avec le format (user,group,other) et (rwx)

    #1)umask trés rétrictif : interdit à quiconque (à part moi) l'accés en lecture ou en écriture ou la traversé:
    
    umask 077 #(retirer les droits au groupe et autres utilisateur)

    #2)umask trés permissif : autorise tout le monde à lire les fichier et traverser des répertoires mais pas en écriture:
            #(droit à enlever : ecriture=2)
    
    umask 022

    #3)umask équilibré : autorise un accès complet et autorise un accès en lecture pour mon groupe UNIX

    umask 027


#REMARQUE :
        #pour tester si le mask a fonctioné:
            #créer un fichier ou repertoire dans le dossier
            #voir les droits de ce fichier ou repertoire avec ls -l
            #si cela a ENLEVER les droit défini pas UMASK donc cela marche

        #UMASK ENLEVE LES DROITS MET NE RAJOUTE PAS !!!!

        #UMASK NE FAIT QUE REDÉFINIR LE DROIT PAR DÉFAUT


               


        
        