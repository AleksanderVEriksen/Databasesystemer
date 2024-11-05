SELECT ID, MAX(vekt_gram), sluknavn, Produsent, dato, fisketype
FROM fangst
JOIN fisketype
ON fisketype.fiskeID = fangst.fiskeID
JOIN sluk
ON sluk.slukID = fangst.slukID
Group by sluknavn