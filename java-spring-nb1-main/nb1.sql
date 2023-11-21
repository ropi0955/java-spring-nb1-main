CREATE DATABASE IF NOT EXISTS `nb1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `nb1`;

CREATE TABLE IF NOT EXISTS klub(
   id        INTEGER  NOT NULL PRIMARY KEY AUTO_INCREMENT
  ,csapatnev VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS poszt(
   id  INTEGER  NOT NULL PRIMARY KEY AUTO_INCREMENT
  ,nev VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS labdarugo(
   id         INTEGER  NOT NULL PRIMARY KEY AUTO_INCREMENT
  ,mezszam    INTEGER  NOT NULL
  ,klubid     INTEGER 
  ,posztid    INTEGER 
  ,utonev     VARCHAR(255)
  ,vezeteknev VARCHAR(255)
  ,szulido    DATE  NOT NULL
  ,magyar     BOOLEAN NOT NULL
  ,ertek      INTEGER  NOT NULL
);

ALTER TABLE `labdarugo` ADD CONSTRAINT `klub_fk` FOREIGN KEY (`klubid`) REFERENCES `klub`(`id`) ON DELETE SET NULL ON UPDATE SET NULL; ALTER TABLE `labdarugo` ADD CONSTRAINT `poszt_fk` FOREIGN KEY (`posztid`) REFERENCES `poszt`(`id`) ON DELETE SET NULL ON UPDATE SET NULL;

INSERT INTO klub(id,csapatnev) VALUES (1,'Vasas FC');
INSERT INTO klub(id,csapatnev) VALUES (2,'Ferencvárosi TC');
INSERT INTO klub(id,csapatnev) VALUES (3,'Puskás Akadémia FC');
INSERT INTO klub(id,csapatnev) VALUES (4,'Debreceni VSC');
INSERT INTO klub(id,csapatnev) VALUES (5,'Budapest Honvéd FC');
INSERT INTO klub(id,csapatnev) VALUES (6,'Szombathelyi Haladás');
INSERT INTO klub(id,csapatnev) VALUES (7,'Paksi FC');
INSERT INTO klub(id,csapatnev) VALUES (8,'Mezőkövesd Zsóry FC');
INSERT INTO klub(id,csapatnev) VALUES (9,'Diósgyőri VTK');
INSERT INTO klub(id,csapatnev) VALUES (10,'Újpest FC');
INSERT INTO klub(id,csapatnev) VALUES (11,'Balmazújváros FC');
INSERT INTO klub(id,csapatnev) VALUES (12,'Videoton FC');


INSERT INTO poszt(id,nev) VALUES (1,'bal oldali védő');
INSERT INTO poszt(id,nev) VALUES (2,'jobb oldali középpályás');
INSERT INTO poszt(id,nev) VALUES (3,'bal szélső');
INSERT INTO poszt(id,nev) VALUES (4,'védekező középpályás');
INSERT INTO poszt(id,nev) VALUES (5,'bal oldali középpályás');
INSERT INTO poszt(id,nev) VALUES (6,'belső középpályás');
INSERT INTO poszt(id,nev) VALUES (7,'jobb szélső');
INSERT INTO poszt(id,nev) VALUES (8,'jobb oldali védő');
INSERT INTO poszt(id,nev) VALUES (9,'kapus');
INSERT INTO poszt(id,nev) VALUES (10,'középcsatár');
INSERT INTO poszt(id,nev) VALUES (11,'középső védő');
INSERT INTO poszt(id,nev) VALUES (12,'támadó középpályás');
INSERT INTO poszt(id,nev) VALUES (13,'hátravont csatár');
INSERT INTO poszt(id,nev) VALUES (14,'jobboldali védő');



INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (1,18,11,4,'Attila','Haris','1997.01.23',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (2,31,6,12,'Márió','Németh','1995.05.01',-1,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (3,77,4,2,'Aleksandar','Jovanovic','1984.10.26',0,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (4,14,4,8,'Krisztián','Kuti','1992.12.04',-1,100);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (5,9,3,10,'Ulysse','Diallo','1992.10.26',0,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (6,12,3,4,'Balázs','Balogh','1990.06.11',-1,400);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (7,33,3,7,'Gábor','Molnár','1994.05.16',-1,400);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (8,7,7,1,'Tamás','Báló','1984.01.12',-1,100);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (9,17,12,4,'Máté','Pátkai','1988.03.06',-1,750);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (10,10,8,4,'Bence','Iszlai','1990.05.29',-1,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (11,28,2,12,'Joseph','Paintsil','1998.02.01',0,400);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (12,12,6,6,'Bence','Kiss','1999.07.01',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (13,1,9,9,'Erik','Bukrán','1996.12.06',-1,75);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (14,71,11,2,'Ádám','Orovecz','1997.10.23',-1,50);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (15,23,11,7,'Ádám','Kovács','1991.04.14',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (16,27,1,7,'Benedek','Murka','1997.09.10',-1,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (17,19,9,8,'Tibor','Nagy','1991.08.14',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (18,22,7,12,'Áron','Fejős','1997.04.17',-1,50);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (19,56,11,10,'Miklós','Belényesi','1983.05.15',-1,50);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (20,1,3,9,'Balázs','Tóth','1997.09.04',-1,50);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (21,6,4,8,'Balázs','Bényei','1990.01.10',-1,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (22,21,6,3,'Tamás','Kiss','2000.11.24',-1,50);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (23,25,4,10,'Haris','Tabakovic','1994.06.20',0,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (24,14,10,6,'Alassane','Diallo','1995.02.19',0,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (25,94,7,10,'Bence','Daru','1994.06.05',-1,125);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (26,99,8,12,'Márk','Murai','1996.07.15',-1,25);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (27,40,1,10,'István','Ferenczi','1977.09.14',-1,50);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (28,3,6,8,'Dávid','Tóth','1998.07.09',-1,100);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (29,4,9,11,'Márk','Tamás','1993.10.28',-1,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (30,74,12,9,'Ádám','Kovácsik','1991.04.04',-1,450);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (31,17,10,13,'Viktor','Angelov','1994.03.27',0,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (32,31,12,5,'Dávid','Barczi','1989.02.01',-1,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (33,26,11,5,'Sándor','Vajda','1991.12.14',-1,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (34,30,7,1,'János','Szabó','1989.07.11',-1,350);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (35,25,12,1,'Krisztián','Tamás','1995.04.18',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (36,6,11,11,'Krisztián','Póti','1988.05.28',-1,100);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (37,14,8,10,'Lazar','Veselinovic','1986.08.04',0,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (38,9,9,10,'Patrik','Bacsa','1992.06.03',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (39,1,11,9,'Gergő','Szécsi','1989.02.07',-1,75);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (40,2,5,11,'Dávid','Bobál','1995.08.31',-1,450);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (41,2,8,8,'Dániel','Farkas','1993.01.13',-1,225);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (42,87,9,11,'Róbert','Tucsa','1998.03.17',-1,50);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (43,29,2,10,'Tamás','Priskin','1986.09.27',-1,500);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (44,55,11,6,'István','Bódis','1997.01.19',-1,100);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (45,97,2,7,'Roland','Varga','1990.01.23',-1,1000);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (46,16,5,6,'Zsolt','Pölöskei','1991.02.19',-1,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (47,5,12,8,'Attila','Fiola','1990.02.17',-1,700);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (48,13,6,8,'Kristóf','Polgár','1996.11.28',-1,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (49,42,4,7,'Norbert','Könyves','1989.06.10',-1,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (50,23,1,4,'Máté','Vida','1996.03.08',-1,700);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (51,86,10,10,'Soma','Novothny','1994.06.16',-1,400);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (52,4,1,11,'Kire','Ristevski','1990.10.22',0,700);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (53,1,7,9,'Péter','Molnár','1983.12.14',0,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (54,28,10,6,'Obinna','Nwobodo','1996.11.29',0,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (55,55,12,11,'Bence','Tóth','1998.05.25',-1,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (56,86,5,1,'Zsolt','Laczkó','1986.12.18',-1,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (57,10,10,7,'Donát','Zsótér','1996.01.06',-1,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (58,13,2,10,'Dániel','Böde','1986.10.21',-1,600);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (59,90,8,9,'Tomas','Tujvel','1983.09.19',0,175);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (60,17,8,11,'Róbert','Pillár','1991.05.27',0,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (61,20,5,4,'Mihály','Csábi','1995.03.25',-1,75);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (62,6,6,11,'Stef','Wils','1982.08.02',0,225);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (63,31,2,9,'Ádám','Holczer','1988.03.28',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (64,1,10,9,'Filip','Pajovic','1993.07.30',0,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (65,30,9,6,NULL,'Nono','1993.03.30',0,350);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (66,94,9,8,'Gábor','Eperjesi','1994.01.12',-1,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (67,30,2,12,'Rui','Pedro','1988.07.02',0,750);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (68,10,4,10,'Tibor','Tisza','1984.11.10',-1,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (69,20,3,11,'Vilmos','Vanczák','1983.06.20',-1,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (70,16,6,12,'Barnabás','Rácz','1996.04.26',-1,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (71,90,2,9,'Dénes','Dibusz','1990.11.16',-1,750);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (72,8,12,4,'Anel','Hadzic','1989.08.16',0,800);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (73,23,7,8,'András','Vági','1988.12.25',-1,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (74,24,8,3,'Tamás','Cseri','1988.01.15',-1,175);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (75,28,3,6,'Stipe','Bacelic-Grgic','1988.02.16',0,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (76,9,8,10,'Csanád','Novák','1994.09.24',-1,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (77,18,5,9,'András','Horváth','1988.02.23',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (78,20,1,4,'Márk','Kleisz','1998.07.02',-1,400);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (79,44,3,9,'Branislav','Danilovic','1988.06.24',0,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (80,33,4,4,'Richárd','Csősz','1997.04.22',-1,50);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (81,92,5,10,'Kristóf','Herjeczki','1998.06.29',-1,100);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (82,91,2,10,'Balázs','Lovrencsics','1991.08.30',-1,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (83,20,9,6,'Attila','Busai','1989.01.21',-1,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (84,8,9,4,'Bálint','Oláh','1994.12.02',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (85,15,9,4,'Barnabás','Tóth','1994.07.28',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (86,22,10,1,'Dávid','Mohl','1985.04.28',-1,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (87,69,11,10,'Roland','Vólent','1992.09.23',-1,75);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (88,3,1,4,'Manjrekar','James','1993.08.05',0,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (89,10,12,12,'István','Kovács','1992.03.27',-1,400);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (90,66,5,9,'Attila','Berla','1999.04.08',-1,50);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (91,8,1,10,'Martin','Ádám','1994.11.06',-1,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (92,11,2,12,'István','Bognár','1991.05.06',-1,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (93,16,10,4,'Anton','Jönsson Salétros','1996.04.12',0,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (94,22,12,1,NULL,'Stopira','1988.05.20',0,750);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (95,66,6,9,'Dániel','Rózsa','1984.11.24',-1,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (96,39,8,11,'Dávid','Hudák','1993.03.21',0,275);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (97,9,1,2,'Botond','Király','1994.10.26',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (98,15,8,12,'Marek','Strestik','1987.02.01',-1,350);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (99,7,1,1,'Szilveszter','Hangya','1994.01.02',-1,600);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (100,24,4,4,'Danilo','Sekulic','1990.04.18',0,350);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (101,3,2,10,'Norbert','Kundrák','1999.05.18',-1,100);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (102,9,5,10,'Márton','Eppel','1991.10.26',-1,650);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (103,14,3,11,'Jonathan','Heris','1990.09.03',0,600);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (104,19,10,11,'Mijusko','Bojovic','1988.08.09',0,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (105,14,2,11,'Zsombor','Takács','1999.02.22',-1,50);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (106,96,7,11,'Bence','Lenzsér','1996.04.09',-1,350);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (107,8,3,6,'Dávid','Márkvárt','1994.09.20',-1,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (108,23,2,3,'Lukács','Bőle','1990.03.27',-1,800);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (109,7,10,7,'Krisztián','Simon','1991.06.10',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (110,5,7,11,'Zsolt','Gévay','1987.11.19',-1,225);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (111,11,6,10,'David','Williams','1988.02.26',0,450);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (112,39,7,3,'László','Bartha','1987.02.09',-1,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (113,4,4,4,'Ioan','Filip','1989.05.20',0,350);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (114,17,9,4,'Miklós','Kitl','1997.06.01',-1,125);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (115,28,7,12,'Márk','Nikházi','1989.02.02',-1,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (116,10,11,7,'Ervin','Zsiga','1991.07.11',-1,125);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (117,5,10,11,'Róbert','Litauszki','1990.03.15',-1,400);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (118,9,6,10,'Miroslav','Grumic','1984.06.29',-1,100);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (119,19,3,9,'Lajos','Hegedüs','1987.12.19',-1,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (120,10,7,7,'Zsolt','Haraszti','1991.11.04',-1,225);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (121,70,4,7,'Kevin','Nagy','1995.09.11',-1,100);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (122,92,6,10,NULL,'Myke','1992.10.30',0,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (123,4,2,4,'Stefan','Spirovski','1990.08.23',0,600);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (124,4,11,11,'Adrián','Rus','1996.03.18',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (125,26,7,12,'Lajos','Bertus','1990.09.26',-1,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (126,16,2,11,NULL,'Leandro','1982.03.19',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (127,8,4,6,'Dániel','Tőzsér','1985.05.12',-1,700);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (128,35,6,1,'Predrag','Bosnjak','1985.11.13',-1,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (129,14,1,10,'Bálint','Gaál','1991.07.14',-1,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (130,17,2,12,'Kornél','Csernik','1998.07.02',-1,100);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (131,16,4,10,'Péter','Bíró','1997.07.04',-1,50);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (132,99,4,5,'Bence','Sós','1994.05.10',-1,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (133,36,5,11,'Botond','Baráth','1992.04.21',-1,350);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (134,98,6,12,'Máté','Tóth','1998.06.20',-1,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (135,13,1,6,'Zsombor','Berecz','1995.12.13',-1,800);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (136,3,8,1,'Dominik','Fótyik','1990.06.16',-1,125);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (137,23,10,9,'Dávid','Banai','1994.05.09',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (138,16,8,2,'István','Csirmaz','1995.05.04',-1,125);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (139,90,1,9,'Dániel','Póser','1990.01.12',-1,100);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (140,5,9,11,'Zoltán','Lipták','1984.12.10',-1,350);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (141,79,6,5,'Péter','Halmosi','1979.09.25',-1,100);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (142,30,11,5,'Aladár','Virág','1983.02.19',-1,50);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (143,77,7,8,'Dávid','Kulcsár','1988.02.25',-1,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (144,33,12,4,'József','Varga','1988.06.06',-1,500);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (145,49,12,3,'Krisztián','Géresi','1994.06.14',-1,350);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (146,88,11,9,'László','Horváth','1988.02.23',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (147,70,1,13,'Tamás','Kulcsár','1982.10.13',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (148,26,10,12,'Dániel','Nagy','1991.03.15',-1,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (149,1,1,9,'Gergely','Nagy','1994.05.27',-1,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (150,13,4,1,'Szabolcs','Barna','1996.04.27',-1,75);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (151,41,8,11,'Attila','Szalai','1998.01.20',-1,100);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (152,12,1,10,'Nikolaos','Vergos','1996.01.13',0,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (153,13,11,6,'Dávid','Sigér','1990.11.30',-1,175);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (154,7,2,11,'Bence','Batik','1993.11.08',-1,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (155,23,12,11,'Roland','Juhász','1983.07.01',-1,500);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (156,21,8,12,'Jakub','Brasen','1989.05.02',0,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (157,24,3,11,'Patrik','Poór','1993.11.25',-1,350);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (158,10,9,10,'Roland','Ugrai','1992.11.13',-1,400);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (159,26,8,1,'Dániel','Vadnai','1989.02.19',-1,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (160,7,5,10,'Davide','Lanzafame','1987.02.09',0,1200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (161,7,6,10,'Patrik','Pinte','1997.01.06',0,125);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (162,27,10,4,'Bence','Pávkovics','1997.03.27',-1,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (163,99,12,3,'Asmir','Suljic','1991.09.11',-1,700);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (164,7,11,8,'Yuri','Gabovda','1989.05.06',0,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (165,11,4,5,'János','Ferenczi','1991.04.03',-1,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (166,77,5,6,'Gergő','Nagy','1993.01.07',-1,350);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (167,71,3,8,'Attila','Osváth','1995.12.10',-1,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (168,33,6,11,'Szilárd','Devecseri','1990.02.13',-1,175);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (169,32,10,9,'Zoltán','Kovács','1984.10.29',-1,125);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (170,23,6,8,'Szabolcs','Schimmer','1984.02.24',-1,125);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (171,49,10,2,'Branko','Pauljevic','1989.06.12',-1,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (172,23,4,13,'Dániel','Bereczki','1995.06.02',-1,75);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (173,13,8,8,'Pál','Lázár','1988.03.11',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (174,23,9,1,'Dávid','Forgács','1995.09.29',-1,100);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (175,8,5,8,'Patrick','Ikenne-King','1991.10.29',0,400);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (176,17,11,7,'Máté','Schmid','1996.07.08',-1,50);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (177,44,12,10,'Marko','Scepovic','1991.05.23',0,1200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (178,21,12,10,'Ezekiel','Henty','1993.05.13',0,1100);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (179,21,4,3,'Kevin','Varga','1996.03.30',-1,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (180,4,6,1,'Gábor','Jánvári','1990.04.25',-1,100);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (181,7,12,13,'Danko','Lazovic','1983.05.17',0,500);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (182,15,3,4,'Patrick','Mevoungou','1986.02.15',0,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (183,23,8,4,'Paul','Keita','1992.06.23',0,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (184,98,5,10,'Bálint','Tömösvári','1998.06.14',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (185,87,7,9,'István','Verpecz','1987.02.04',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (186,5,2,1,'Marcos','Pedroso','1993.10.04',0,900);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (187,20,12,11,'Attila','Mocsi','2000.05.29',-1,100);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (188,99,5,9,'Dávid','Gróf','1989.04.17',-1,350);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (189,14,6,7,'Zoltán','Medgyes','1995.07.23',-1,175);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (190,5,5,10,'Gergely','Bobál','1995.08.31',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (191,21,9,4,'Gergő','Kocsis','1994.03.07',-1,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (192,18,12,12,'Bence','Szabó','1998.01.16',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (193,6,9,2,'Diego','Vela','1991.11.27',0,350);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (194,24,5,4,'Djordje','Kamber','1983.11.20',-1,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (195,21,5,3,'Ákos','Bíró','1998.04.25',-1,50);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (196,23,3,1,'Csaba','Spandler','1996.03.07',-1,175);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (197,51,2,4,'András','Csonka','2000.05.01',-1,75);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (198,8,7,6,'Tamás','Kecskés','1986.01.15',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (199,6,10,4,'József','Windecker','1992.12.02',-1,400);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (200,8,11,10,'Bachana','Arabuli','1994.01.05',0,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (201,1,8,9,'Dávid','Dombó','1993.02.26',-1,125);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (202,29,11,1,'Áron','Schmid','1998.09.29',-1,50);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (203,27,9,10,'Ákos','Szarka','1990.11.24',0,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (204,6,8,1,'Gergő','Gohér','1987.06.16',-1,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (205,1,6,9,'Gábor','Király','1976.04.01',-1,100);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (206,2,4,11,'Ákos','Kinyik','1993.05.12',-1,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (207,17,1,10,'Evgen','Pavlov','1991.03.12',0,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (208,19,2,4,'Julian','Koch','1990.11.11',0,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (209,21,2,8,'Endre','Botka','1994.04.25',-1,450);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (210,10,3,13,'András','Radó','1993.09.09',-1,350);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (211,98,1,6,'Bálint','Vogyicska','1998.02.27',-1,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (212,6,12,1,'András','Fejes','1988.08.26',-1,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (213,74,9,5,'Patrik','Ternován','1997.06.10',-1,75);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (214,6,1,2,'Donát','Szivacski','1997.01.18',-1,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (215,1,12,9,'Tamás','Horváth','1987.06.18',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (216,2,10,8,'Kristóf','Szűcs','1997.01.03',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (217,21,7,4,'Kristóf','Papp','1993.05.14',-1,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (218,70,6,4,'András','Jancsó','1996.04.22',-1,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (219,67,11,4,'Irakli','Maisuradze','1988.08.22',0,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (220,68,3,11,'János','Hegedűs','1996.10.04',-1,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (221,4,10,11,'Dávid','Kálnoki Kis','1991.08.06',-1,350);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (222,27,3,2,'Liridon','Latifi','1994.02.06',0,750);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (223,37,2,1,'Janek','Sternberg','1992.10.19',0,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (224,29,7,2,'Tamás','Koltai','1987.04.30',-1,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (225,15,1,11,'Máté','Czingráber','1997.06.13',-1,100);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (226,99,9,9,'Botond','Antal','1991.08.22',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (227,15,11,11,'Bence','Jagodics','1994.03.31',-1,100);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (228,7,8,12,'Bence','Tóth','1989.07.22',-1,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (229,7,3,10,'Márk','Szécsi','1994.05.22',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (230,17,5,10,NULL,'Danilo','1986.11.12',0,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (231,11,12,8,'Loïc','Nego','1991.01.15',0,900);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (232,25,10,3,'Remzifaik','Selmani','1997.05.05',0,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (233,8,6,3,'Funsho','Bamgboye','1999.01.09',0,75);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (234,81,9,11,'Patrik','Ivánka','1998.08.25',-1,50);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (235,41,11,7,'Ferenc','Rácz','1991.03.28',-1,75);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (236,10,1,12,'Mohamed','Remili','1985.05.31',-1,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (237,29,10,4,'Gergő','Németh','1999.03.03',-1,50);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (238,3,12,11,NULL,'Vinícius','1990.02.21',-1,1000);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (239,29,4,4,'Erik','Kusnyír','2000.02.07',-1,50);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (240,30,12,8,'Roland','Szolnoki','1992.01.21',-1,350);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (241,22,9,9,'Ivan','Rados','1984.02.21',-1,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (242,20,7,11,'Péter','Zachán','1997.12.12',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (243,2,11,9,'Krisztián','Pogacsics','1985.10.17',-1,175);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (244,17,7,12,'Dénes','Szakály','1988.03.15',-1,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (245,35,10,9,'Bence','Gundel-Takács','1998.04.06',-1,50);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (246,77,12,8,'Bendegúz','Bolla','1999.11.22',-1,75);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (247,8,10,6,'Benjámin','Cseke','1994.07.22',-1,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (248,19,8,3,'Márk','Koszta','1996.09.26',-1,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (249,19,4,7,'Justin','Mengolo','1993.06.24',0,350);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (250,12,4,9,'Ján','Novota','1983.11.29',0,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (251,25,5,11,'Ivan','Lovric','1985.07.11',-1,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (252,38,7,4,'Ádám','Hajdú','1993.01.16',-1,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (253,46,7,4,'Ádám','Simon','1990.03.30',-1,275);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (254,19,11,3,'Nemanja','Andric','1987.06.13',-1,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (255,44,6,9,'Márton','Gyurján','1995.05.01',-1,75);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (256,40,2,3,'Moutari','Amadou','1994.01.19',0,700);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (257,80,8,4,'Máté','Köböl','1992.04.14',0,75);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (258,21,10,2,'Benjámin','Balázs','1990.04.26',-1,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (259,9,10,10,'Patrik','Tischler','1991.07.30',-1,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (260,27,2,6,'Fernando','Gorriarán','1994.11.27',0,1100);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (261,1,4,9,'Oleksandr','Nad','1985.09.02',-1,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (262,42,6,9,'Gergely','Lévay','1993.08.15',-1,50);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (263,48,9,11,'Dejan','Karan','1988.08.25',0,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (264,55,3,12,'Péter','Szakály','1986.08.17',-1,400);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (265,11,11,12,'Carlo','Erdei','1996.03.22',-1,50);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (266,80,3,12,'Márk','Madarász','1995.11.24',-1,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (267,15,2,12,'Tamás','Hajnal','1981.03.15',-1,100);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (268,20,4,10,'Tamás','Takács','1991.02.20',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (269,14,9,3,'Zsolt','Óvári','1997.03.29',-1,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (270,28,11,8,'Tibor','Bokros','1988.08.28',-1,100);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (271,51,12,9,'András','Hársfalvi','1996.11.12',-1,50);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (272,33,11,1,'Eke','Uzoma','1989.08.11',0,175);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (273,25,2,11,'Miha','Blazic','1993.05.08',0,450);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (274,3,4,11,'Csaba','Szatmári','1994.06.14',-1,350);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (275,32,1,11,'Vit','Benes','1988.08.12',0,400);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (276,8,2,7,'Gergő','Lovrencsics','1988.09.01',-1,900);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (277,18,10,4,'Bojan','Sankovic','1993.11.21',0,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (278,77,3,10,'Antonio','Perosevic','1992.03.06',0,450);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (279,22,1,11,'Jan','Simunek','1987.02.20',0,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (280,22,4,9,'Péter','Kovács','2000.02.10',-1,50);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (281,11,5,10,'Kadima','Kabangu','1993.06.15',0,125);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (282,5,11,11,'László','Tamás','1988.01.18',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (283,24,6,12,'Benjámin','Tóth','1995.01.24',-1,75);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (284,20,2,6,'Zoltán','Gera','1979.04.22',-1,100);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (285,8,8,10,'Roland','Baracskai','1992.04.11',-1,125);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (286,10,6,7,'Karol','Mészáros','1993.07.25',0,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (287,9,11,10,'Ádám','Fekete','1988.01.22',-1,100);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (288,22,8,9,'Martin','Krnac','1985.01.30',0,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (289,97,4,9,'István','Szabados','1997.11.08',-1,50);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (290,80,6,12,'Balázs','Petró','1997.07.07',-1,100);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (291,3,5,1,'Bence','Gergényi','1998.03.16',-1,50);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (292,38,8,10,'Tomas','Majtan','1987.03.30',0,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (293,19,1,11,'Felix','Burmeister','1990.03.09',0,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (294,42,2,9,'Ádám','Varga','1999.02.12',-1,75);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (295,29,6,1,'Milán','Németh','1988.05.29',-1,125);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (296,7,9,10,'Gábor','Makrai','1996.06.26',-1,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (297,17,4,11,'Norbert','Mészáros','1980.08.19',-1,100);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (298,15,5,11,'Stefan','Deák','1991.03.23',-1,125);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (299,57,5,3,'Filip','Holender','1994.07.27',-1,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (300,21,11,4,'Ante','Batarelo','1984.11.21',0,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (301,27,6,4,'Lóránt','Kovács','1993.06.06',-1,350);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (302,27,4,2,'Ádám','Bódi','1990.10.18',-1,400);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (303,28,1,11,'Tamás','Vaskó','1984.02.20',-1,250);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (304,33,9,10,'Nikolaos','Ioannidis','1994.04.26',0,450);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (305,13,3,8,'Ádám','Csilus','1996.11.18',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (306,17,3,4,'László','Zsidai','1986.07.16',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (307,30,3,12,'Josip','Knezevic','1988.10.03',0,600);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (308,4,8,4,'Frano','Mlinar','1992.03.30',0,350);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (309,26,6,11,'Márk','Jagodics','1992.04.10',-1,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (310,11,3,7,'Dániel','Prosser','1994.06.15',-1,300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (311,31,7,9,'Gergő','Rácz','1995.11.20',-1,50);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (312,6,5,6,'Dániel','Gazdag','1996.03.02',-1,450);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (313,9,7,10,'János','Hahn','1995.05.15',-1,200);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (314,22,2,11,'Kenny','Otigba','1992.08.29',-1,1300);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (315,88,8,11,'Tamás','Szeles','1993.12.07',-1,150);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (316,23,5,12,'Bence','Banó-Szabó','1999.07.25',-1,100);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (317,89,5,8,'Balázs','Villám','1989.06.02',-1,175);
INSERT INTO labdarugo(id,mezszam,klubid,posztid,utonev,vezeteknev,szulido,magyar,ertek) VALUES (318,87,1,9,'Lubos','Kamenar','1987.06.17',0,250);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
                         `id` int(11) NOT NULL auto_increment,
                         `name` varchar(100) NOT NULL,
                         `email` varchar(100) NOT NULL,
                         `password` varchar(255) NOT NULL,
                         PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
                                                            (1, 'Admin', 'admin@gmail.com', '$2a$10$QEaf3I.eLiZC4F4pDnqmC.sTysFlJ59wgROmw3ATxceFs/wgg0LvK'),
                                                            (3, 'User', 'user@gmail.com', '$2a$10$exVjZOnYQ3oFdNTFP7qVHOoL8K2XhKpWXY3r8duw8v9pTNxmC0qbm');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `roles`
--

CREATE TABLE `roles` (
                         `id` int(11) NOT NULL auto_increment,
                         `name` varchar(255) NOT NULL,
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
                                       (1, 'ROLE_ADMIN'),
                                       (2, 'ROLE_ACTUATOR'),
                                       (3, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user_role`
--

CREATE TABLE `user_role` (
                             `user_id` int(11) NOT NULL,
                             `role_id` int(11) NOT NULL,
                             PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
                                                   (1, 1),
                                                   (1, 2),
                                                   (1, 3),
                                                   (3, 2);

--
-- Korrigálás nagyba
--

UPDATE `labdarugo`
SET magyar = magyar * -1;
