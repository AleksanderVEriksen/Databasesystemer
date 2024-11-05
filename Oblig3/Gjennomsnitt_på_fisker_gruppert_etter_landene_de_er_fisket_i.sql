SELECT ID, AVG(vekt_gram) AS Gjennomsnitt, LandNavn
FROM fangst
join fisketype
on fisketype.fiskeID = fangst.fiskeID
join sted
ON sted.stedsID = fangst.stedsID
Join land
ON land.LandID = sted.LandID
Group by LandNavn
order by ID
