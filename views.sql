CREATE VIEW LegendaryStatsView AS
SELECT Name, Generation, BaseStatTotal
FROM Pokemon
WHERE IsLegendary = TRUE;

-- Use the view
SELECT * FROM LegendaryStatsView;
