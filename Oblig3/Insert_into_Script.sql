Insert into vann(VannType) Value ("ferskvann"),("saltvann");
Insert into land(LandNavn) Value ("Norge"),("Sverige"),("Danmark");
Insert into sted(stedsNavn,VannID,LandID) Value ("Glomma",1,1),("Tistaelva",1,1),("Stora Le",1,2),("Brofjorden",1,2),("Nibe Bredning",2,3);
Insert into sluk(sluknavn, Produsent) Value ("Koster","Abu Garcia"),("Toby Salmo","Abu Garcia"),("Nordingen","Fladen"),("Jerken","Sølvkroken");
Insert into fisketype(fisketype) Value ("Gjedde"),("Ørret"),("Laks"),("Torsk"),("Sei");
Insert into fangst(fiskeID,vekt,dato,slukID,stedsID) Value (1,3600,"2020-01-01 12:00:33",4,3);