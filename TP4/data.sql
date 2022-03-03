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

INSERT INTO type(Nom)
VALUES ('Poison');

INSERT INTO type(Nom)
VALUES ('Dragon');

-- Data in Attaque table
INSERT INTO attaque(Nom,Puissance,Precision,NombrePP,FK_Type)
VALUES ('Tackle',40,100,35,5);

INSERT INTO attaque(Nom,Puissance,Precision,NombrePP,FK_Type)
VALUES ('Vine Whip',45,100,25,3);

INSERT INTO attaque(Nom,Puissance,Precision,NombrePP,FK_Type)
VALUES ('Leech Seed',0,90,10,3);

INSERT INTO attaque(Nom,Puissance,Precision,NombrePP,FK_Type)
VALUES ('Poison powder',0,75,35,6);

INSERT INTO attaque(Nom,Puissance,Precision,NombrePP,FK_Type)
VALUES ('Scratch', 40, 100, 35, 5);

INSERT INTO attaque(Nom,Puissance,Precision,NombrePP,FK_Type)
VALUES ('Ember', 40, 100, 25, 1);

INSERT INTO attaque(Nom,Puissance,Precision,NombrePP,FK_Type)
VALUES ('Flamethrower', 90, 100, 15,1);

INSERT INTO attaque(Nom,Puissance,Precision,NombrePP,FK_Type)
VALUES ('Dragon Rage', 1, 100, 10,7);

INSERT INTO attaque(Nom,Puissance,Precision,NombrePP,FK_Type)
VALUES ('Water Gun', 40, 100, 25,2);

INSERT INTO attaque(Nom,Puissance,Precision,NombrePP,FK_Type)
VALUES ('Water Pulse', 60, 100, 20, 2);

INSERT INTO attaque(Nom,Puissance,Precision,NombrePP,FK_Type)
VALUES ('Hydro Pump', 110, 80, 5, 2);

INSERT INTO attaque(Nom,Puissance,Precision,NombrePP,FK_Type)
VALUES ('Spark', 65, 100, 20, 4);

INSERT INTO attaque(Nom,Puissance,Precision,NombrePP,FK_Type)
VALUES ('Thunder', 110, 70, 10, 4);

INSERT INTO attaque(Nom,Puissance,Precision,NombrePP,FK_Type)
VALUES ('Slam', 80, 75, 20, 2);

-- Data in Espece table
INSERT INTO espece(Nom,FK_EvolutionID,FK_Type)
VALUES ('Bulbasaur',2,3);

INSERT INTO espece(Nom,FK_EvolutionID,FK_Type)
VALUES ('Ivysaur',3,3);

INSERT INTO espece(Nom,FK_EvolutionID,FK_Type)
VALUES ('Venusaur',0,3);

INSERT INTO espece(Nom,FK_EvolutionID,FK_Type)
VALUES ('Charmander',5,1);

INSERT INTO espece(Nom,FK_EvolutionID,FK_Type)
VALUES ('Charmeleon',6,1);

INSERT INTO espece(Nom,FK_EvolutionID,FK_Type)
VALUES ('Charizard',0,1);

INSERT INTO espece(Nom,FK_EvolutionID,FK_Type)
VALUES ('Squirtle',8,2);

INSERT INTO espece(Nom,FK_EvolutionID,FK_Type)
VALUES ('Wartortle',9,2);

INSERT INTO espece(Nom,FK_EvolutionID,FK_Type)
VALUES ('Blastoise',0,2);

INSERT INTO espece(Nom,FK_EvolutionID,FK_Type)
VALUES ('Pikachu',11,4);

INSERT INTO espece(Nom,FK_EvolutionID,FK_Type)
VALUES ('Raichu',0,4);

-- Data in Pokemon table
INSERT INTO pokemon(Nom,Niveau,Genre,StatsAttaque,StatsDefense,StatsVitesse,StatsPV,FK_Espece,FK_Attaque1,FK_Attaque2,FK_Attaque3,FK_Attaque4,FK_Dresseur,PositionEquipe)
VALUES ('Ourosarn',7,1,49,49,45,45,1,1,2,3,4,1,1);


