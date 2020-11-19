DROP TABLE IF EXISTS `TERMEK`;
DROP TABLE IF EXISTS `GYARTO`;
CREATE TABLE GYARTO(adoszam int,nev char(30) PRIMARY KEY,telephely char(10));
CREATE TABLE TERMEK(tkod int,
					nev char(50),
                    ear int CHECK(ear > 0),
                    gyarto char,
                    FOREIGN KEY(gyarto) REFERENCES GYARTO(nev));
show tables;