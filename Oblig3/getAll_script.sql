SELECT ID, vekt_gram, sluknavn, Produsent, dato, fisketype, LandNavn ,stedsnavn, VannType
FROM fangst
JOIN fisketype
ON fisketype.fiskeID = fangst.fiskeID
JOIN sluk
ON sluk.slukID = fangst.slukID
JOIN sted
ON sted.stedsID = fangst.stedsID
JOIN vann
ON vann.VannID = sted.VannID
JOIN land
ON land.LandID = sted.LandID
ORDER BY ID ASC