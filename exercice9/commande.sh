#exercice 9:
#REMARQUE : cette exercice est diréctemnt liés à l'exercice 6 

#1)Transferer des répertoire et des fichier:

    #Copier un fichier vers une machine distante :
scp /chemin/de/mon_fichier utilisateur@ip:/chemin/destination/

    #copier un fichier depuis une machine distant :
scp utilisateur@ip:/chemin/de/mon_fichier /chemin/local/

    #Pour un dossier entier :(-r : récursive)
scp -r /chemin/de/mon_fichier utilisateur@ip:/chemin/destination/

#2)essayer de supprimer le repertoire voisin vous meme.

    ssh mon_voisin@ip

    rmdir notre_dossier

            #remarque :
                    #on peut tout à fait supprimer le dossier 
            
            #suggestion :
                    #se connecter à un autre compte (*qui n'a pas les droit) (qu'on vas appelé Bogosy)
                            #ex : mon_voisin est un user(*de plus sudo) dans les pc de mon voisin
                            #     mais je peux me connecter avec un user appelé Bogosy dans son pc sans forcement sudoers
                    
                    #modifer les droits de Bogosy :
                        setfacl -m u:Bogosy:rw ./notre_dossier

#3)Est-il possible de partager un fichier entre deux personnes sans la rendre accessbile au reste du groupe :
    setfacl -m u:alice:rwx /chemin/vers/fichier.txt
    setfacl -m u:bob:rwx /chemin/vers/fichier.txt
    setfacl -m g:nom_groupe:--- /chemin/vers/fichier.txt




#4)COMMANDES ACL IMPORTANT :

        #obtenir votre ACL par rapport à un fichier :
            getfacl fichier

            #exemple de résultat :
                #{
            # file: test/essai
            # owner: tomefy
            # group: tomefy
            #user::rwx
            #group::---
            #other::---
                #}

        #Modifier les droits d'un utilisateurs :
            setfacl -m u:utilisateur:rw fichier
        
        #Modifier les droits d'un groupe :
            setfacl -m g:groupe:rw fichier
        
        #supprimer l'ACL d'un utilisateur :
            setfacl -x u:utilisateur fichier
        
        # ACL par défaut (pour les dossiers):
            setfacl -d -m u:utilisateur:rw dossier

        #Autre options :
                setfacl -R -m u:utilisateur:rw dossier #(Applique récursivement les ACL à tous les fichiers et sous-dossiers)

                setfacl -m o::--- fichier #(Retire tous les droits aux "autres" utilisateurs).




#explication des format pour setfacl:
    #on a setfactl -[option] [u:(pour user) ou g:(group)] :[nom du groupe ou de l'user] : [ces droits] [fichier ou dossier choisi]

#explication des options:
    #-m :mask définie les droits
    #-x :retire les droits
    #-d :default (droits par défaut)
    #-R :recursive
