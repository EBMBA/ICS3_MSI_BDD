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
    FK_Attaque1 INT NOT NULL
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