Ce dépôt contient le code source de l'application web développée pour l'entreprise bordelaise « Vite & Gourmand », gérée par Julie et José depuis 25 ans
. L'objectif du projet est de digitaliser leur activité de traiteur en proposant un catalogue interactif et un système de commande en ligne
.
⚠️ État actuel du projet : Le développement est en phase d'intégration Front-End. L'effort principal a été porté sur la structure modulaire en PHP et l'interface du Catalogue Dynamique, incluant les filtres de recherche
.
🛠 Stack Technique
Front-End : HTML5, CSS3, Framework Bootstrap 5 pour garantir un design adaptatif (responsive)
.
Back-End : PHP avec l'extension PDO configurée pour sécuriser les futures interactions avec la base de données via des requêtes préparées
.
Bases de données :
MySQL : Structure relationnelle complète (10 tables) déjà modélisée et prête à l'emploi
.
MongoDB (prévu) : Pour le stockage NoSQL des statistiques de vente administratives
.

Identité Visuelle (Charte Graphique)
L'interface respecte strictement la charte graphique de la marque pour refléter son positionnement "premium"
:
Polices : Playfair Display pour l'élégance des titres et Lato pour la lisibilité des descriptions
.
Couleurs : Utilisation du Bordeaux (#6D1A36) pour la navigation et de l'Orange (#F19A3E) pour les boutons d'appel à l'action
.

Installation et Déploiement Local
Pour lancer le projet sur votre environnement de travail (recommandé : MAMP sur macOS)
:
Cloner le dépôt :
Configuration du serveur :
Placer le dossier à la racine de votre répertoire htdocs.
Démarrer les serveurs Apache et MySQL.
Importation de la base de données :
Créer une base de données vite_et_gourmand.
Importer le fichier database.sql situé à la racine pour générer la structure complète (Utilisateurs, Menus, Plats, Allergènes, etc.)
.

Fonctionnalité Implémentée : Page Catalogue
La page catalogue.php est le cœur actuel du développement
. Elle permet de visualiser l'intégration des filtres de recherche demandés par Julie et José
:
Filtre par prix maximum par personne.
Filtre par thème (Noël, Pâques, Classique, Évènement).
Filtre par régime (Végétarien, Vegan, Classique).
Filtre par nombre de personnes minimum.
Note : La logique dynamique (JavaScript) permettant l'actualisation sans rechargement de page est la prochaine étape majeure de développement
.

Documentation
Les documents de conception (MCD, Diagrammes de cas d'utilisation et de séquence) ainsi que la charte graphique complète sont disponibles dans le dossier /docs
.
