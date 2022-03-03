-- Data in Type table
INSERT INTO type(Nom)
VALUES ('Fire');

INSERT INTO type(Nom)
VALUES ('Water');


INSERT INTO type(Nom)
VALUES ('Plant');

INSERT INTO type(Nom)
VALUES ('Electrick');

INSERT INTO type(Nom)
VALUES ('Normal');

-- Data in Attaque table
INSERT INTO attaque(Nom,Puissance,Precision,NombrePP,FK_Type)
VALUES ('Tackle',40,100,35,5)

-- Data in Pokemon table
INSERT INTO pokemon(Nom,Niveau,Genre,StatsAttaque,StatsDefense,StatsVitesse,StatsPV,FK_Espece,FK_Attaque1,FK_Attaque2,FK_Attaque3,FK_Attaque4,FK_Dresseur,PositionEquipe)
VALUES ('Ourosarn',7,1,10,14,12,15,1,0,1,2,3,1,0);

