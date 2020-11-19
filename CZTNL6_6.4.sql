CREATE TABLE termekek (tkod INT PRIMARY KEY, nev char(50) NOT NULL, ear INT CHECK (EAR > 0), kategoria CHAR(20));
INSERT INTO termekek VALUE(1,'lapát',2000,'K1');
INSERT INTO termekek VALUE(2,'seprű',4000,'K1');
INSERT INTO termekek VALUE(3,'mosogató gél',1500,'K2');
INSERT INTO termekek VALUE(4,'szappan',1000,'K2');
INSERT INTO termekek VALUE(5,'pohár',2400,'K3');

