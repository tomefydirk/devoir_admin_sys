#Exo5:

#1)attribution de droit
chmod 640 essai

#2)verification des accès
ssh mon_user@ip

#3)Essayer d’accéder aux répertoires d'autres étudiants Listez les répertoires des autres : 
ssh autre_user@ip

#Exo6:

#1)Créer le fichier et définir les permissions Bob crée le répertoire test et le fichier exclu :
mkdir test
touch test/exclu


#2)Définir des  permissions spécifique :
		#Première étape créer les user de Bob et Alice (j'utilise fedora) :

			#crée seulement les utilisateurs
			sudo useradd Bob
			sudo useradd Alice

			#definir les mots de passes
			sudo passwd Bob
			sudo passwd Alice

			#Rappel commande pour se connecter avoir Bob et Alice:
			su Bob
			su Alice

			#Bob@fedora:~$ mkdir test
			#Bob@fedora:~$ touch exlu

			#Création du groupe IS1:
			groupadd IS1

			#Insérer Bob et Alice dans IS1 :
			usermod -aG IS1 Bob   # -a :append -G :group
			usermod -aG IS1 Alice

			#Définir les propriétaire du groupe :
			sudo chown alice:IS1 exclu      # Alice est proprio, groupe = IS1
			sudo chown bob:IS1 ~/test       # Bob est proprio du dossier test

#lister les utilisateurs:
ls /home | awk '{print $1}'

chmod 040 exclu                 # Lecture pour le groupe uniquement
chmod u+w exclu                 # Écriture pour Alice (propriétaire)

#Definition des propriétaires :
sudo chown Alice:IS1 /home/Bob/test/exclu # Alice est proprio, groupe = IS1
sudo chown Bob:IS1 /home/Bob/test # Bob est proprio du dossier test

# Bob n’a aucun droit sur `exclu`
sudo setfacl -m u:bob:0 /home/Bob/test/exclu

# Seul le proprio (Bob) peut créer de nouveaux fichier dans test
su Bob
chmod 755 ~/test











