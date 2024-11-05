SELECT ID, vekt_gram, dato, fisketype,stedsnavn, VannType 
FROM fangst 
JOIN fisketype 
ON fisketype.fiskeID = fangst.fiskeID 
JOIN sted 
ON sted.stedsID = fangst.stedsID 
JOIN vann 
ON vann.VannID = sted.VannID
where vekt_gram >= (SELECT vekt_gram from fangst order by vekt_gram DESC limit 1 offset 4)
ORDER BY vekt_gram DESC 

