drop table if exists SKIEUR, SPECIALITE, STATION,COMPETITION, CLASSEMENT, COMPORTE;



-- Créations

create table SPECIALITE(
	idSpecialite		serial,
	libelleSpecialite	varchar(30),
	constraint pkSpecialite primary key(idSpecialite)
);

create table STATION(
	idStation			serial,
	nomStation			varchar(30),
	altitude			integer,
	pays				varchar(15),
	constraint pkStation primary key(idStation)
);

create table SKIEUR(
	noSkieur 			serial,
	nomSkieur 			varchar(30),
	idSpecialite		integer,
	idStation			integer,
	constraint pkSkieur primary key(noSkieur),
	constraint pkSkieurSpecialite foreign key(idSpecialite) references SPECIALITE(idSpecialite),
	constraint pkSkieurStation foreign key(idStation) references STATION(idStation)
);

create table COMPETITION(
	idCompet 			serial,
	libelleCompet 		varchar(30),
	dateComp 			date,
	idStation			integer,
	constraint pkCompetition primary key(idCompet),
	constraint pkCompetitionSkieur foreign key(idStation) references STATION(idStation)
);

create table CLASSEMENT(
	noSkieur 			serial,
	idCompet			serial,
	classement 			integer,
	constraint pkClassementSkieur foreign key(noSkieur) references SKIEUR(noSkieur),
	constraint pkClassementCompetition foreign key(idCompet) references COMPETITION(idCompet),
	constraint pkClassement primary key(noSkieur, idCompet)
);

create table COMPORTE(
	idCompet 			serial,
	idSpecialite		serial,
	constraint pkComporteCompetition foreign key(idCompet) references COMPETITION(idCompet),
	constraint pkComporteSpecialite foreign key(idSpecialite) references SPECIALITE(idSpecialite),
	constraint pkComporte primary key(idCompet, idSpecialite)
);



-- Insertions

insert into STATION values(default, 'Tignes', 2000, 'France');
insert into STATION values(default, 'Les Ménuires', 1800, 'France');
insert into STATION values(default, 'Les Arcs', 2000, 'France');
insert into STATION values(default, 'La Plagne', 2000, 'France');


insert into SPECIALITE values(default,'slalom');
insert into SPECIALITE values(default,'descente');
insert into SPECIALITE values(default,'slalom géant');

insert into SKIEUR values(default,'skieur1',1,1);
insert into SKIEUR values(default,'skieur2',1,2);
insert into SKIEUR values(default,'skieur3',2,1);
insert into SKIEUR values(default,'skieur4',2,3);
insert into SKIEUR values(default,'skieur5',2,1);
insert into SKIEUR values(default,'skieur6',3,2);


insert into COMPETITION values(default, 'compet1','2014-09-01',1);
insert into COMPETITION values(default, 'compet2','02/09/2014',1);
insert into COMPETITION values(default, 'compet3','2014-09-03',2);
insert into COMPETITION values(default, 'compet4','2014-09-04',2);
insert into COMPETITION values(default, 'compet5','2014-09-05',2);
insert into COMPETITION values(default, 'compet6','2014-09-06',3);

insert into CLASSEMENT values (1,1,1);
insert into CLASSEMENT values (2,1,2);
insert into CLASSEMENT values (3,1,4);
insert into CLASSEMENT values (4,1,3);
insert into CLASSEMENT values (1,2,1);
insert into CLASSEMENT values (2,2,2);
insert into CLASSEMENT values (3,2,3);
insert into CLASSEMENT values (4,2,4);
insert into CLASSEMENT values (5,2,5);
insert into CLASSEMENT values (6,3,1);
insert into CLASSEMENT values (1,3,2);
