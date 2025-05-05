LOAD DATA LOCAL INFILE '/Users/dorartgj/Desktop/all_pokemon_data.csv'
INTO TABLE Pokemon
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Name, NationalDex, PrimaryType, SecondaryType, HasSecondaryType,
Generation, IsLegendary, Form, AltFormFlag, EvolutionStage,
NumOfEvolutions, ColorID, CatchRate, Height_in, Weight_lbs,
BaseStatTotal, Health, Attack, Defense, SpAttack, SpDefense, Speed);
