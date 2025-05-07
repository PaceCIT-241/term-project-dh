CREATE DATABASE IF NOT EXISTS PokemonDB;
USE PokemonDB;

CREATE TABLE Pokemon (
    PokemonID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    NationalDex INT,
    PrimaryType VARCHAR(50),
    SecondaryType VARCHAR(50),
    HasSecondaryType BOOLEAN,
    Generation VARCHAR(50),
    IsLegendary BOOLEAN,
    Form VARCHAR(50),
    AltFormFlag BOOLEAN,
    EvolutionStage INT,
    NumOfEvolutions INT,
    ColorID VARCHAR(50),
    CatchRate INT,
    Height_in FLOAT,
    Weight_lbs FLOAT,
    BaseStatTotal INT,
    Health INT,
    Attack INT,
    Defense INT,
    SpAttack INT,
    SpDefense INT,
    Speed INT
);

CREATE TABLE PokemonStats (
    PokemonID INT PRIMARY KEY,
    Name VARCHAR(100),
    BaseStatTotal INT,
    Health INT,
    Attack INT,
    Defense INT,
    SpAttack INT,
    SpDefense INT,
    Speed INT,
    FOREIGN KEY (PokemonID) REFERENCES Pokemon(PokemonID)
);
