-- Creation de la base de données
CREATE DATABASE IF NOT EXISTS vite_et_gourmand;

-- Selection de cette base pour y inserer nos futures tables
USE vite_et_gourmand;

-- Creation de la table 'role' issue de l'association 'possede'
CREATE TABLE role (
    role_id INT PRIMARY KEY,
    libelle VARCHAR(50)
);

--Creation de la table 'utilisateur" qui depend de la table 'role'
CREATE TABLE utilisateur (
    utilisateur_id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(50),
    password VARCHAR(50),
    prenom VARCHAR(50),
    nom VARCHAR(50),
    telephone VARCHAR(50),
    ville VARCHAR(50),
    pays VARCHAR(50),
    adresse_postale VARCHAR(50),
    role_id INT,
    FOREIGN KEY (role_id) REFERENCES role(role_id)
);

-- Création de la table theme
CREATE TABLE theme (
    theme_id INT PRIMARY KEY AUTO_INCREMENT,
    libelle VARCHAR(50)
);

-- Création de la table regime
CREATE TABLE regime (
    regime_id INT PRIMARY KEY AUTO_INCREMENT,
    libelle VARCHAR(50)
);

-- Création de la table menu qui depend des tables 'theme' et 'regime'
CREATE TABLE menu (
    menu_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_personnes_minimum INT,
    prix_par_personne DOUBLE,
    regime VARCHAR(50),
    'description' VARCHAR(50),
    quantite_restante INT,
    regime_id INT,
    theme_id INT,
    FOREIGN KEY (regime_id) REFERENCES regime(regime_id),
    FOREIGN KEY (theme_id) REFERENCES theme(theme_id)
);

--Création de la table 'allergene"
CREATE TABLE allergene (
    allergene_id INT PRIMARY KEY AUTO_INCREMENT,
    libelle VARCHAR(50)
);

--Création de la table 'plat'
CREATE TABLE plat(
    plat_id INT PRIMARY KEY AUTO_INCREMENT,
    titre_plat VARCHAR(50),
    photo BLOB
);

--Création de la table 'menu_plat" issue de l'association 'propose'
CREATE TABLE menu_plat (
    menu_id iNT,
    plat_id INT,
    PRIMARY KEY (menu_id, plat_id),
    FOREIGN KEY (menu_id) REFERENCES menu(menu_id),
    FOREIGN KEY (plat_id) REFERENCES plat(plat_id)
);

--Création de la table 'plat_allergene' issue de l'association 'contient'
CREATE TABLE plat_allergene (
    plat_id iNT,
    allergen_id INT,
    PRIMARY KEY (plat_id, allergene_id),
    FOREIGN KEY (plat_id) REFERENCES plat(plat_id),
    FOREIGN KEY (allergene_id) REFERENCES allergene(allergene_id)
);

--Création de la table 'commande' dependante de 'utilistaeur' et 'menu'
CREATE TABLE commande (
    numero_commande VARCHAR(50) PRIMARY KEY,
    date_commande DATE,
    date_prestation DATE,
    heure_livraison VARCHAR(50),
    prix_menu DOUBLE,
    nombre_personne INT,
    prix_livraison DOUBLE,
    statut VARCHAR(50),
    pret_materiel BOOL,
    restitution_meteriel BOOL,
    utilisateur_id INT,
    menu_id INT,
    FOREIGN KEY (utilisateur_id) REFERENCES utilisateur(utilisateur_id),
    FOREIGN KEY (menu_id) REFERENCES menu(menu_id)
);

--Création de la table 'horaire' qui est indépendante
CREATE TABLE horaire (
    horaire_id INT PRIMARY KEY AUTO_INCREMENT,
    jour VARCHAR(50),
    heure_ouverture VARCHAR(50),
    heure_fermeture VARCHAR(50)
);

--Créatino de la table 'avis' dépendante de 'utilisteur'
CREATE TABLE avis (
    avis_id INT PRIMARY KEY AUTO_INCREMENT,
    note VARCHAR(50),
    `description` VARCHAR(50),
    statut VARCHAR(50),
);