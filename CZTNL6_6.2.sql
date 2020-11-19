DROP TABLE IF EXISTS `GYARTO`;
DROP TABLE IF EXISTS `TERMEK`;
CREATE TABLE GYARTO(adoszam int,nev char(30) PRIMARY KEY,telephely char(10),irsz char(4),varos char(40),utca char(100));
CREATE TABLE TERMEK(tkod int ,
					nev char(50) ,
                    ear int CHECK(ear > 0),
                    gyarto char,
                    FOREIGN KEY(gyarto) REFERENCES GYARTO(nev),
                    PRIMARY KEY(tkod,nev));

CREATE TABLE EGYSEGEK(	aru int,
						FOREIGN KEY(aru) REFERENCES TERMEK(tkod),
                        db int CHECK (db > 0));
                        
CREATE TABLE ALKATRESZEK(akod char PRIMARY KEY,
							nev char(50));
                        
CREATE TABLE KOMPONENS(termek1 char,
                        alkatreszek char,
                        FOREIGN KEY(alkatreszek) REFERENCES ALKATRESZEK(akod));
                        

                        