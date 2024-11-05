create table Sluk(
slukID int auto_increment,
sluknavn varchar(45),
Produsent varchar(45),
PRIMARY KEY (slukID)
);
Create table Vann(
VannID int AUTO_increment,
VannType varchar(45),
primary key(VannID)
);
create table Land(
LandID int auto_increment,
LandNavn varchar(45),
primary key(LandID)
);
create table Sted(
stedsID int auto_increment,
stedsNavn varchar(45),
VannID int,
LandID int,
primary key(stedsID),
foreign key (VannID) references Vann(VannID),
foreign key (LandID) references Land(LandID)
);
create table Fisketype(
fiskeID int auto_increment,
fisketype varchar(45),
primary key(fiskeID)
);
create table Fangst(
ID int auto_increment,
fiskeID int,
vekt_gram int,
dato DATETIME,
slukID int,
stedsID int,
primary key(ID),
foreign key (fiskeID) references fisketype(fiskeID),
foreign key (slukID) references Sluk(slukID),
foreign key (stedsID) references Sted(stedsID)
);