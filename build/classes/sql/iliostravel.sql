drop database if exists ilios;
create database ilios;
use ilios;

create table pays (
    codepays int(5) auto_increment not null,
    nompays varchar(100) unique not null,
    primary key (codepays)
)engine=innodb;

create table localite(
    codelocalite int(5) auto_increment not null,
    nomlocalite varchar(100) unique not null,
    codepays int(5) not null,
    primary key (codelocalite),
    foreign key (codepays) references pays (codepays) on delete cascade on update cascade
)engine=innodb;

create table utilisateur (
    iduser int(5) auto_increment not null,
    nomuser varchar(100) not null,
    prenomuser varchar(100) not null,
    adresseuser varchar(200) not null,
    cpuser char(5) not null,
    villeuser varchar(100) not null,
    teluser char(10) unique  not null,
    loginuser varchar(100) unique not null,
    mdpuser varchar (200) not null,
    primary key (iduser)
)engine=innodb;

create table question (
    codequestion int(5) auto_increment not null,
    descquestion varchar(100) not null,
    primary key (codequestion)
)engine=innodb;



create table visite (
    codevisite int(5) auto_increment not null,
    nomvisite varchar(100)  not null,
    adresse varchar(100) not null,
    cpvisite char(5) not null,
    codelocalite int(5) not null,
    primary key (codevisite),
    foreign key (codelocalite) references localite (codelocalite) on delete cascade on update cascade
)engine=innodb;

create table activite (
    codeactivite int(5) auto_increment not null,
    nomactivite varchar (100)  not null ,
    codevisite int(5) not null,
    primary key (codeactivite),
    foreign key (codevisite) references visite (codevisite) on delete cascade on update cascade
)engine=innodb;

create table reponse(
    iduser int(5) not null,
    codeactivite int(5) not null,
    codequestion int(5) not null,
    foreign key (iduser) references utilisateur(iduser) on delete cascade on update cascade,
    foreign key (codeactivite) references activite(codeactivite) on delete cascade on update cascade,
    foreign key (codequestion) references question(codequestion) on delete cascade on update cascade
    
)engine=innodb;
alter table reponse
add descreponse varchar(200) not null;
alter table reponse
add note int (10) not null;

insert into pays values 
    (null,'VIETNAM'),
    (null,'SENEGAL'),
    (null,'SERBIE'),
    (null,'ESPAGNE'),
    (null,'BAHAMAS'),
    (null,'GRECE'),
    (null,'LONDRE'), 
    (null,'ITALIE');

insert into localite values 
    (null,'Hanoi', 1),
    (null,'Saloum', 2),
    (null,'Novi Sad', 3),
    (null,'Malaga', 4),
    (null,'Nassau', 5),
    (null,'Thessalonique', 6),
    (null,'Londre', 7), 
    (null,'Cambridge', 8);

insert into utilisateur values 
    (null,'Marger', 'Mathilde', '8 avenue de la republique', '59000', 'Lille', '0650084988', 'mathilde', 'mathilde' ),
    (null,'Bregger', 'Amandine', '6 rue Yvonne de Gaulle', '92600', 'Asniere sur seine', '0750084988', 'amandine', 'amandine');

INSERT INTO `question` (`codequestion`, `descquestion`) VALUES (1, 'Pourquoi avez-vous choisi notre agence de voyage parmi tous nos concurrents ?');
INSERT INTO `question` (`codequestion`, `descquestion`) VALUES (2, 'Comment avez-vous fait la réservation de votre voyage ?');
INSERT INTO `question` (`codequestion`, `descquestion`) VALUES (3, 'Veuillez évaluer le transport en avion proposé par notre agence.');
INSERT INTO `question` (`codequestion`, `descquestion`) VALUES (4, 'Veuillez évaluer la qualité du logement proposé par notre agence.');
INSERT INTO `question` (`codequestion`, `descquestion`) VALUES (5, 'L\'agence de voyage vous a-t-elle proposé les sevices suivants : Assurance de protection des paiements, Assurance tous risques, Transport (aller-retour) à l\'aéroport, Excursions facultatives d\'un jour.');
INSERT INTO `question` (`codequestion`, `descquestion`) VALUES (6, 'Comment avez-vous été satisfait(e) de la qualité des services pendant votre séjour ?');
INSERT INTO `question` (`codequestion`, `descquestion`) VALUES (7, 'Comment évalueriez-vous globalement le voyage et le séjour après votre retour ?');
INSERT INTO `question` (`codequestion`, `descquestion`) VALUES (8, 'Qu\'est-ce qui est prioritaire pour vous en choisissant un voyage ?');
INSERT INTO `question` (`codequestion`, `descquestion`) VALUES (9, 'Quel type de voyage préférez-vous réserver ?');
INSERT INTO `question` (`codequestion`, `descquestion`) VALUES (10, 'Quelle est votre impression globale sur le personnel de l\'agence de voyage :');
INSERT INTO `question` (`codequestion`, `descquestion`) VALUES (11, 'Quelle est votre impression globale sur le transport');
INSERT INTO `question` (`codequestion`, `descquestion`) VALUES (12, 'Quelle est votre impression globale sur le logement');
INSERT INTO `question` (`codequestion`, `descquestion`) VALUES (13, 'Quelle est votre impression globale sur les excursions');
INSERT INTO `question` (`codequestion`, `descquestion`) VALUES (14, 'Quelle est votre impression globale sur la nourriture et les rafraîchissements');
INSERT INTO `question` (`codequestion`, `descquestion`) VALUES (15, 'Le voyage a-t-il répondu à vos attentes ?');
INSERT INTO `question` (`codequestion`, `descquestion`) VALUES (16, 'Êtes-vous satisfait(e) de notre gamme des voyages ?');
INSERT INTO `question` (`codequestion`, `descquestion`) VALUES (17, 'Notre site web est-il claire et facile à naviguer ?');
INSERT INTO `question` (`codequestion`, `descquestion`) VALUES (18, 'Toutes les informations sur notre site web reflètent-elles la réalité ?');
INSERT INTO `question` (`codequestion`, `descquestion`) VALUES (19, 'Le rapport qualité-prix est-il optimisé ?');
INSERT INTO `question` (`codequestion`, `descquestion`) VALUES (20, 'Voyagerez-vous encore avec notre agence de voyage à l\'avenir ?');





CREATE table userglobal
 (
   iduser int(5) NOT NULL auto_increment,
   nom varchar(50) NOT NULL,
   PRENOM varchar(50) NOT NULL,
   ADRESSE varchar(100) NULL,
   CP CHAR(5) NULL,
   VILLE varchar(50) NULL,
   LOGIN varchar(50) not NULL,  
   MDP varchar(255) not NULL,
    PRIMARY KEY (iduser) 
 ) engine=innodb;

CREATE TABLE PROPRIETAIRE
 (
   iduser int(5) NOT NULL auto_increment,
   DATEINSCRIPTION timestamp NOT NULL default CURRENT_TIMESTAMP,
   PROFILVOYAGEUR ENUM('Solo', 'En couple'),
   PHOTOPROFIL varchar(200) NULL,
   DATEDERNIERECONNEXION timestamp NOT NULL default CURRENT_TIMESTAMP ,
   nom varchar(50) NOT NULL,
   PRENOM varchar(50) NOT NULL,
   ADRESSE varchar(100) NULL,
   CP CHAR(5) NULL,
   VILLE varchar(50) NULL,
   LOGIN varchar(50) not NULL,  
   MDP varchar(255) not NULL,
   PRIMARY KEY (iduser),
    FOREIGN KEY (iduser) REFERENCES userglobal (iduser) ON delete cascade on update cascade
 ) engine=innodb;
 

CREATE TABLE TYPELOGEMENT
 (
   CODETYPELOGEMENT int(5) NOT NULL auto_increment,
   LIBELLETYPELOGMENT varchar(50) not NULL  ,
    PRIMARY KEY (CODETYPELOGEMENT) 
 ) engine=innodb;


CREATE table LOGEMENT
 (
   IDLOGEMENT int(5) NOT NULL auto_increment ,
   CODELOCALITE int(5) NOT NULL,
   CODETYPELOGEMENT int(5) NOT NULL,
   iduser int(5) NOT NULL,
   LIBELLELOGEMENT varchar(50) not NULL  ,
   DESCRIPTION varchar(300),
   CARACTERISTIQUE varchar(50),
   SUPERFICIE float(10.2) not null,
   ANIMAUX enum('oui','non') not null,
   ENFANTS enum('oui','non') not null,
   ADRESSE varchar(100) not NULL,
   CPLOGEMENT CHAR(5) not NULL  ,
   VILLELOGEMENT varchar(50) not NULL  ,
   ATOUTSLOGEMENT varchar(50),
   DISPONIBILITE enum('oui','non') not NULL, 
   PRIMARY KEY (IDLOGEMENT),
   FOREIGN KEY (CODELOCALITE) REFERENCES LOCALITE (CODELOCALITE) on delete cascade on update cascade,
    FOREIGN KEY (CODETYPELOGEMENT) REFERENCES TYPELOGEMENT (CODETYPELOGEMENT) on delete cascade on update cascade,
    FOREIGN KEY (iduser) REFERENCES PROPRIETAIRE (iduser) on delete cascade on update cascade

 ) engine=innodb;

 CREATE TABLE ECHANGER
 (
   iduser int(5) NOT NULL ,
   iduser1 int(5) NOT NULL ,
   IDLOGEMENT int(5) NOT NULL,
   DUREE varchar(32) NULL , 
   PRIMARY KEY (iduser, iduser1, IDLOGEMENT),
   FOREIGN KEY (iduser) REFERENCES PROPRIETAIRE (iduser) on delete cascade on update cascade ,
    FOREIGN KEY (iduser1) REFERENCES PROPRIETAIRE (iduser) on delete cascade on update cascade,
    FOREIGN KEY (IDLOGEMENT) REFERENCES LOGEMENT (IDLOGEMENT) on delete cascade on update cascade
 ) engine=innodb;
