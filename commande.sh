#Exo5:

#1)attribution de droit
chmod 640 essai

#2)verification des accès
ls -l ./essai
pwd

#3)Essayer d’accéder aux répertoires d'autres étudiants Listez les répertoires des autres : 
ls /home/

cat /home/autre_utilisateur/fichier_test

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





