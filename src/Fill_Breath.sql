				###### Remplissage de la database ######

# Instertion données table administrateur

INSERT INTO `administrateur` ( `nom`, `prenom`, `date_entree`,`poste`) VALUES

('Mandanda', 'Stephan', '2009-03-28', 'Gestionnaire'),
('Njigol', 'Thomas', '2016-10-16', 'Technicien'),
('Barkley', 'Rose', '2018-11-13', 'Gestionnaire'),
('Safir', 'Lina', '2011-12-15', 'Technicien'),
('Lucas', 'Mickael', '2012-07-05', 'Gestionnaire'),
('Mavrick', 'Sarah', '2014-09-12', 'Technicien'),
('Bernard', 'Chloe', '2015-04-08', 'Technicien'),
('Anne', 'Paola', '2017-08-18', 'Gestionnaire'),
('Leroy', 'Claude', '2012-07-05', 'Admin');

# Instertion données table gestionnaires

INSERT INTO `gestionnaires` (`nom`, `prenom`, `postes`, `date_entree`) VALUES 
('Anne', 'Paola', 'bus','2019-01-20'),
('Lucas', 'Mickael', 'technique' , '2012-07-05'),
('Barkley', 'Rose', 'ressource', '2019-03-19');


#Requete de supression par l'administrateur
DELETE FROM `gestionnaires` WHERE `gestionnaires`.`id` = 2;

