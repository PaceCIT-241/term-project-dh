-- Select top 100 from each table
SELECT * FROM Pokemon LIMIT 100;
SELECT * FROM PokemonStats LIMIT 100;

-- Join top 100 from related tables
SELECT ps.*, p.Generation, p.IsLegendary
FROM PokemonStats ps
JOIN Pokemon p ON ps.PokemonID = p.PokemonID
LIMIT 100;

-- Aggregate query (Average stats by generation)
SELECT Generation, AVG(BaseStatTotal) AS AvgStats
FROM Pokemon
GROUP BY Generation;

-- Alternative query aggregate (Compares Base total stat of legendary vs non-legendary pokemon): 
SELECT IsLegendary, AVG(BaseStatTotal) AS AvgBaseStats
FROM Pokemon
GROUP BY IsLegendary;
