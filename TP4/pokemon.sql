CREATE DATABASE pokemon_db;

CREATE TABLE pokemon (
    PK_PokemonID SERIAL,
    Nom VARCHAR (255) NOT NULL,
    Niveau INT NOT NULL DEFAULT 1,
    Genre INT NOT NULL,
    StatsAttaque INT NOT NULL,
    StatsDefense INT NOT NULL,
    StatsVitesse INT NOT NULL,
    StatsPV INT NOT NULL,
    FK_Espece INT NOT NULL,
    FK_Attaque1 INT NOT NULL,
    FK_Attaque2 INT NULL,
    FK_Attaque3 INT NULL,
    FK_Attaque4 INT NULL,
    FK_Dresseur INT NULL,
    PositionEquipe INT NULL,
    CONSTRAINT pk_pokemon PRIMARY KEY (PK_PokemonID),
    CONSTRAINT fk_espece FOREIGN KEY (FK_Espece) REFERENCES espece(PK_EspeceID),
    CONSTRAINT fk_attaque1 FOREIGN KEY (FK_Attaque1) REFERENCES attaque(PK_AttaqueID),
    CONSTRAINT fk_attaque2 FOREIGN KEY (FK_Attaque2) REFERENCES attaque(PK_AttaqueID),
    CONSTRAINT fk_attaque3 FOREIGN KEY (FK_Attaque3) REFERENCES attaque(PK_AttaqueID),
    CONSTRAINT fk_attaque4 FOREIGN KEY (FK_Attaque4) REFERENCES attaque(PK_AttaqueID),
    CONSTRAINT fk_dresseur FOREIGN KEY (FK_Dresseur) REFERENCES dresseur(PK_DresseurID),
    CONSTRAINT un_position UNIQUE (FK_Dresseur, PositionEquipe)
);

CREATE TABLE espece (
    PK_EspeceID SERIAL,
    Nom VARCHAR (255) NOT NULL,
    FK_EvolutionID INT NULL,
    FK_Type INT NOT NULL,
    CONSTRAINT pk_espece PRIMARY KEY (PK_EspeceID),
    CONSTRAINT fk_evolution FOREIGN KEY (FK_EvolutionID) REFERENCES espece(PK_EspeceID),
    CONSTRAINT fk_type FOREIGN KEY (FK_Type) REFERENCES type(PK_TypeID)
);

CREATE TABLE type (
    PK_TypeID SERIAL,
    Nom VARCHAR (255) NOT NULL,
    CONSTRAINT pk_type PRIMARY KEY (PK_TypeID)
);

CREATE TABLE attaque (
    PK_AttaqueID SERIAL,
    Nom VARCHAR (255) NOT NULL,
    Puissance INT NOT NULL,
    Precision INT NOT NULL,
    NombrePP INT NOT NULL,
    FK_Type INT NOT NULL,
    CONSTRAINT pk_attaque PRIMARY KEY (PK_AttaqueID),
    CONSTRAINT fk_type FOREIGN KEY (FK_Type) REFERENCES type(PK_TypeID)
);

CREATE TABLE dresseur (
    PK_DresseurID SERIAL,
    Nom VARCHAR (255) NOT NULL,
    CONSTRAINT pk_dresseur PRIMARY KEY (PK_DresseurID)
);