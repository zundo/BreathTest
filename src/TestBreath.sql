				###### Création de la database ######

DROP DATABASE IF EXISTS TestBreath;
CREATE DATABASE TestBreath
CHARACTER SET 'utf8';


######Création des tables
administrateur, 


##gestionnaires

USE TestBreath;
DROP TABLE IF EXISTS `gestionnaires`;
CREATE TABLE IF NOT EXISTS `gestionnaires` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nom` varchar(60) NOT NULL,
  `prenom` varchar(60) NOT NULL,
  `postes` ENUM('parc','bus','technique','ressource'),
  `date_entree` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

##techniciens
USE TestBreath;
DROP TABLE IF EXISTS `techniciens`;
CREATE TABLE IF NOT EXISTS `techniciens` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nom` varchar(60) NOT NULL,
  `prenom` varchar(60) NOT NULL,
   `specialites` ENUM('bus','car','bus2','autre') NOT NULL,
    `date_entree` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#véhicules
USE TestBreath;
DROP TABLE IF EXISTS `vehicules`;
CREATE TABLE IF NOT EXISTS `vehicules` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `marque` varchar(60) NOT NULL,
  `modele` varchar(60) NOT NULL,
  `ville_exploitation` ENUM('Paris','Lille','Arras','Poitiers','Bordeaux','Courbevoie','Dunkerque','Clermont', 'Toulon') NOT NULL,
   `date_entree_en_service` date NOT NULL,
   `date_revision` date,
   `date_controle_tech` date,
   `date_incident` date ,
   `date_intervention` date ,
   `techniciens_id`  INT ,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#opérations de maintenance. FAUSSE TABLE 

USE TestBreath;
DROP TABLE IF EXISTS `maintenaces`;
CREATE TABLE IF NOT EXISTS `maintenaces` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
   id_vehicules int(10),
  `marque` varchar(60) NOT NULL,
  `modele` varchar(60) NOT NULL,
  `intervention` ENUM('parebrise','ampoules','Portes','vitre','pneus') NOT NULL,
   `date_arrivee` date NOT NULL,
   `date_sortie` date,
  PRIMARY KEY (`id`),
      FOREIGN KEY (id_vehicules) REFERENCES vehicules(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#opérations de maintenance. VRAI DEMANDE DU P.O

•	Une opération de maintenance possède une date de début,
date de fin, un sujet, une description, une liste de pièces
affectées, une note pour chaque technicien ayant 
$intervenu dans cette opération, ainsi que des photos.



DROP TABLE IF EXISTS `operation`;
CREATE TABLE operation
(
    id INT PRIMARY KEY NOT NULL,
    date_debut date,
    date_fin date,
    sujet VARCHAR(100),
    description VARCHAR(300),
    photo VARCHAR(300),
    pieces ENUM('parebrise','ampoules','Portes','vitre','pneus') NOT NULL,   
    FOREIGN KEY (id_techniciens) REFERENCES techniciens(id)
)











