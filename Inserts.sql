-- Ordre per inserir elements (Diagrama referencial)
-- 1. Protocols
-- 2. Cicle
-- 3. Pacient
-- 4. Personal
-- 5. Ingrès
-- 6. Atén
-- 7. Conté
INSERT INTO Protocols
VALUES ('P0000001', 'Aturada cardíaca', 2),
	('P0000002', 'Protocol 2 sense cicles', 10);

INSERT INTO Cicle
VALUES (1, 'No Desfibril.lable', '0.01', 'Adrenalina', 0, 'P0000001'),
	(2, 'No Desfibril.lable', NULL, NULL, 0, 'P0000001'),
	(3, 'No Desfibril.lable', '0.01', 'Adrenalina', 0, 'P0000001'),
	(4, 'No Desfibril.lable', NULL, NULL, 0, 'P0000001'),
	(5, 'No Desfibril.lable', '0.01', 'Adrenalina', 0, 'P0000001'),
	(1, 'Desfibril.lable', NULL, NULL, 4, 'P0000001'),
	(2, 'Desfibril.lable', NULL, NULL, 4, 'P0000001'),
	(3, 'Desfibril.lable', '0.01/5', 'Adrenalina/Amiodarona', 4, 'P0000001'),
	(4, 'Desfibril.lable', NULL, NULL, 4, 'P0000001'),
	(5, 'Desfibril.lable', '0.01/5', 'Adrenalina/Amiodarona', 4, 'P0000001'),
	(6, 'Desfibril.lable', NULL, NULL, 6, 'P0000001'),
	(7, 'Desfibril.lable', '0.01', 'Adrenalina', 8, 'P0000001');

INSERT INTO Pacient
VALUES ('62481296W', 'Amaro Ramón-Bartolomé'),
	('80616407G', 'Miguel Ángel Pavón Carballo'),
	('72811469R', 'Teófilo Estevez Baena'),
	('39522682B', 'Ema Reig Guardiola'),
	('49603456T', 'Máxima Rovira Salinas');

INSERT INTO Personal
VALUES ('50833921B', 'Infermer/a 1'),
	('33109498D', 'Infermer/a 2'),
	('17913613V', 'Infermer/a 3'),
	('11543223Y', 'Infermer/a 1'),
	('77005105R', 'Pediatre/a 1'),
	('96928703X', 'Pediatre/a 2'),
	('40094741Z', 'Pediatre/a 3 Team Leader'),
	('16416480T', 'Pediatre/a 3 Team Leader'),
	('91762475L', 'TCAI'),
	('86319620E', 'TCAI');

INSERT INTO Ingrès
VALUES (TODATE('2021-07-20', 'YYYY-MM-DD'), 13, 1, '62481296W'),
	(TODATE('2022-03-27', 'YYYY-MM-DD'), 20, 5, '62481296W'),
	(TODATE('2023-07-25', 'YYYY-MM-DD'), 26, 3, '62481296W'),
	(TODATE('2020-10-06', 'YYYY-MM-DD'), 15, 5, '80616407G'),
	(TODATE('2021-03-01', 'YYYY-MM-DD'), 18, 3, '80616407G'),
	(TODATE('2021-04-21', 'YYYY-MM-DD'), 19, 4, '72811469R'),
	(TODATE('2022-12-04', 'YYYY-MM-DD'), 24, 1, '72811469R'),
	(TODATE('2023-01-23', 'YYYY-MM-DD'), 25, 5, '72811469R'),
	(TODATE('2022-10-15', 'YYYY-MM-DD'), 13, 2, '39522682B'),
	(TODATE('2021-12-22', 'YYYY-MM-DD'), 12, 2, '49603456T'),
	(TODATE('2022-02-28', 'YYYY-MM-DD'), 16, 2, '49603456T');

INSERT INTO Atén
VALUES
	(TODATE('2021-07-20', 'YYYY-MM-DD'), '62481296W','77005105R','Pediatre/a 2'),
	(TODATE('2022-03-27', 'YYYY-MM-DD'), '62481296W','96928703X','Pediatre/a 1'),
	(TODATE('2023-07-25', 'YYYY-MM-DD'), '62481296W','40094741Z','Pediatre/a 1'),
	(TODATE('2020-10-06', 'YYYY-MM-DD'), '80616407G','16416480T','Pediatre/a 3 Team Leader'),
	(TODATE('2021-03-01', 'YYYY-MM-DD'), '80616407G','96928703X','Pediatre/a 2'),
	(TODATE('2021-04-21', 'YYYY-MM-DD'), '72811469R','77005105R','Pediatre/a 2'),
	(TODATE('2022-12-04', 'YYYY-MM-DD'), '72811469R','77005105R','Pediatre/a 3 Team Leader'),
	(TODATE('2023-01-23', 'YYYY-MM-DD'), '72811469R','16416480T','Pediatre/a 1'),
	(TODATE('2022-10-15', 'YYYY-MM-DD'), '39522682B','96928703X','Pediatre/a 2'),
	(TODATE('2021-12-22', 'YYYY-MM-DD'), '49603456T','16416480T','Pediatre/a 3 Team Leader'),
	(TODATE('2022-02-28', 'YYYY-MM-DD'), '49603456T','96928703X','Pediatre/a 1'),
	(TODATE('2021-07-20', 'YYYY-MM-DD'), '62481296W', '91762475L', 'TCAI'),
	(TODATE('2022-03-27', 'YYYY-MM-DD'), '62481296W', '86319620E', 'TCAI'),
	(TODATE('2023-07-25', 'YYYY-MM-DD'), '62481296W', '91762475L', 'TCAI'),
	(TODATE('2020-10-06', 'YYYY-MM-DD'), '80616407G', '86319620E', 'TCAI'),
	(TODATE('2021-03-01', 'YYYY-MM-DD'), '80616407G', '91762475L', 'TCAI'),
	(TODATE('2021-04-21', 'YYYY-MM-DD'), '72811469R', '86319620E', 'TCAI'),
	(TODATE('2022-12-04', 'YYYY-MM-DD'), '72811469R', '91762475L', 'TCAI'),
	(TODATE('2023-01-23', 'YYYY-MM-DD'), '72811469R', '86319620E', 'TCAI'),
	(TODATE('2022-10-15', 'YYYY-MM-DD'), '39522682B', '91762475L', 'TCAI'),
	(TODATE('2021-12-22', 'YYYY-MM-DD'), '49603456T', '86319620E', 'TCAI'),
	(TODATE('2022-02-28', 'YYYY-MM-DD'), '49603456T', '91762475L', 'TCAI'),
	(TODATE('2021-07-20', 'YYYY-MM-DD'), '62481296W','50833921B','Infermer/a 2'),
	(TODATE('2022-03-27', 'YYYY-MM-DD'), '62481296W','33109498D','Infermer/a 1'),
	(TODATE('2020-10-06', 'YYYY-MM-DD'), '80616407G','50833921B','Infermer/a 1'),
	(TODATE('2021-03-01', 'YYYY-MM-DD'), '80616407G','33109498D','Infermer/a 2'),
	(TODATE('2022-12-04', 'YYYY-MM-DD'), '72811469R','50833921B','Infermer/a 2'),
	(TODATE('2023-01-23', 'YYYY-MM-DD'), '72811469R','33109498D','Infermer/a 1'),
	(TODATE('2021-12-22', 'YYYY-MM-DD'), '49603456T','50833921B','Infermer/a 1'),
	(TODATE('2022-02-28', 'YYYY-MM-DD'), '49603456T','33109498D','Infermer/a 2'),
	(TODATE('2020-10-06', 'YYYY-MM-DD'), '80616407G','96928703X','Pediatre/a 2'),
	(TODATE('2021-12-22', 'YYYY-MM-DD'), '49603456T','77005105R','Pediatre/a 1');

INSERT INTO Conté
VALUES 
	(TODATE('2021-07-20', 'YYYY-MM-DD'),'62481296W','12:00',36,'0.13',0,'No Desfibril.lable',1,'No Desfibril.lable','P0000001'),
	(TODATE('2021-07-20', 'YYYY-MM-DD'),'62481296W','12:02',34,'0',0,'No Desfibril.lable',2,'No Desfibril.lable','P0000001'),
	(TODATE('2021-07-20', 'YYYY-MM-DD'),'62481296W','12:04',36,'0.13',0,'No Desfibril.lable',3,'No Desfibril.lable','P0000001'),
	(TODATE('2021-07-20', 'YYYY-MM-DD'),'62481296W','12:06',35,'0',0,'No Desfibril.lable',4,'No Desfibril.lable','P0000001'),
	(TODATE('2022-03-27', 'YYYY-MM-DD'),'62481296W','12:00',34,'0.2',0,'No Desfibril.lable',1,'No Desfibril.lable','P0000001'),
	(TODATE('2022-03-27', 'YYYY-MM-DD'),'62481296W','12:02',36,'0',0,'No Desfibril.lable',2,'No Desfibril.lable','P0000001'),
	(TODATE('2022-03-27', 'YYYY-MM-DD'),'62481296W','12:04',34,'0.2',0,'No Desfibril.lable',3,'No Desfibril.lable','P0000001'),
	(TODATE('2022-03-27', 'YYYY-MM-DD'),'62481296W','12:06',34,'0',0,'No Desfibril.lable',4,'No Desfibril.lable','P0000001'),
	(TODATE('2023-07-25', 'YYYY-MM-DD'),'62481296W','12:00',35,'0.26',0,'No Desfibril.lable',1,'No Desfibril.lable','P0000001'),
	(TODATE('2023-07-25', 'YYYY-MM-DD'),'62481296W','12:02',34,'0',0,'No Desfibril.lable',2,'No Desfibril.lable','P0000001'),
	(TODATE('2023-07-25', 'YYYY-MM-DD'),'62481296W','12:04',36,'0.26',0,'No Desfibril.lable',3,'No Desfibril.lable','P0000001'),
	(TODATE('2023-07-25', 'YYYY-MM-DD'),'62481296W','12:06',34,'0',0,'No Desfibril.lable',4,'No Desfibril.lable','P0000001'),
	(TODATE('2020-10-06', 'YYYY-MM-DD'),'80616407G','12:00',36,'0.15',0,'No Desfibril.lable',1,'No Desfibril.lable','P0000001'),
	(TODATE('2020-10-06', 'YYYY-MM-DD'),'80616407G','12:02',35,'0',0,'No Desfibril.lable',2,'No Desfibril.lable','P0000001'),
	(TODATE('2020-10-06', 'YYYY-MM-DD'),'80616407G','12:04',34,'0.15',0,'No Desfibril.lable',3,'No Desfibril.lable','P0000001'),
	(TODATE('2020-10-06', 'YYYY-MM-DD'),'80616407G','12:06',36,'0',0,'No Desfibril.lable',4,'No Desfibril.lable','P0000001'),
	(TODATE('2021-03-01', 'YYYY-MM-DD'),'80616407G','12:00',34,'0.18',0,'No Desfibril.lable',1,'No Desfibril.lable','P0000001'),
	(TODATE('2021-03-01', 'YYYY-MM-DD'),'80616407G','12:02',34,'0',0,'No Desfibril.lable',2,'No Desfibril.lable','P0000001'),
	(TODATE('2021-03-01', 'YYYY-MM-DD'),'80616407G','12:04',36,'0.18',0,'No Desfibril.lable',3,'No Desfibril.lable','P0000001'),
	(TODATE('2021-03-01', 'YYYY-MM-DD'),'80616407G','12:06',34,'0',0,'No Desfibril.lable',4,'No Desfibril.lable','P0000001'),
	(TODATE('2021-04-21', 'YYYY-MM-DD'),'72811469R','12:00',34,'0',76,'Desfibril.lable',1,'Desfibril.lable','P0000001'),
	(TODATE('2021-04-21', 'YYYY-MM-DD'),'72811469R','12:02',35,'0',76,'Desfibril.lable',2,'Desfibril.lable','P0000001'),
	(TODATE('2021-04-21', 'YYYY-MM-DD'),'72811469R','12:04',34,'0.19/95',76,'Desfibril.lable',3,'Desfibril.lable','P0000001'),
	(TODATE('2021-04-21', 'YYYY-MM-DD'),'72811469R','12:06',34,'0',76,'Desfibril.lable',4,'Desfibril.lable','P0000001'),
	(TODATE('2021-04-21', 'YYYY-MM-DD'),'72811469R','12:08',36,'0.19/95',76,'Desfibril.lable',5,'Desfibril.lable','P0000001'),
	(TODATE('2021-04-21', 'YYYY-MM-DD'),'72811469R','12:10',34,'0',114,'Desfibril.lable',6,'Desfibril.lable','P0000001'),
	(TODATE('2022-12-04', 'YYYY-MM-DD'),'72811469R','12:00',34,'0',96,'Desfibril.lable',1,'Desfibril.lable','P0000001'),
	(TODATE('2022-12-04', 'YYYY-MM-DD'),'72811469R','12:02',36,'0',96,'Desfibril.lable',2,'Desfibril.lable','P0000001'),
	(TODATE('2022-12-04', 'YYYY-MM-DD'),'72811469R','12:04',34,'0.24/120',96,'Desfibril.lable',3,'Desfibril.lable','P0000001'),
	(TODATE('2022-12-04', 'YYYY-MM-DD'),'72811469R','12:06',35,'0',96,'Desfibril.lable',4,'Desfibril.lable','P0000001'),
	(TODATE('2022-12-04', 'YYYY-MM-DD'),'72811469R','12:08',34,'0.24/120',96,'Desfibril.lable',5,'Desfibril.lable','P0000001'),
	(TODATE('2022-12-04', 'YYYY-MM-DD'),'72811469R','12:10',36,'0',144,'Desfibril.lable',6,'Desfibril.lable','P0000001'),
	(TODATE('2023-01-23', 'YYYY-MM-DD'),'72811469R','12:00',34,'0',100,'Desfibril.lable',1,'Desfibril.lable','P0000001'),
	(TODATE('2023-01-23', 'YYYY-MM-DD'),'72811469R','12:02',34,'0',100,'Desfibril.lable',2,'Desfibril.lable','P0000001'),
	(TODATE('2023-01-23', 'YYYY-MM-DD'),'72811469R','12:04',36,'0.25/125',100,'Desfibril.lable',3,'Desfibril.lable','P0000001'),
	(TODATE('2023-01-23', 'YYYY-MM-DD'),'72811469R','12:06',34,'0',100,'Desfibril.lable',4,'Desfibril.lable','P0000001'),
	(TODATE('2023-01-23', 'YYYY-MM-DD'),'72811469R','12:08',34,'0.25/125',100,'Desfibril.lable',5,'Desfibril.lable','P0000001'),
	(TODATE('2023-01-23', 'YYYY-MM-DD'),'72811469R','12:10',35,'0',150,'Desfibril.lable',6,'Desfibril.lable','P0000001'),
	(TODATE('2022-10-15', 'YYYY-MM-DD'),'39522682B','12:00',34,'0',52,'Desfibril.lable',1,'Desfibril.lable','P0000001'),
	(TODATE('2022-10-15', 'YYYY-MM-DD'),'39522682B','12:02',36,'0',52,'Desfibril.lable',2,'Desfibril.lable','P0000001'),
	(TODATE('2022-10-15', 'YYYY-MM-DD'),'39522682B','12:04',36,'0.13/65',52,'Desfibril.lable',3,'Desfibril.lable','P0000001'),
	(TODATE('2022-10-15', 'YYYY-MM-DD'),'39522682B','12:06',34,'0',52,'Desfibril.lable',4,'Desfibril.lable','P0000001'),
	(TODATE('2022-10-15', 'YYYY-MM-DD'),'39522682B','12:08',34,'0.13/65',52,'Desfibril.lable',5,'Desfibril.lable','P0000001'),
	(TODATE('2022-10-15', 'YYYY-MM-DD'),'39522682B','12:10',34,'0',78,'Desfibril.lable',6,'Desfibril.lable','P0000001'),
	(TODATE('2021-12-22', 'YYYY-MM-DD'),'49603456T','12:00',35,'0',48,'Desfibril.lable',1,'Desfibril.lable','P0000001'),
	(TODATE('2021-12-22', 'YYYY-MM-DD'),'49603456T','12:02',34,'0',48,'Desfibril.lable',2,'Desfibril.lable','P0000001'),
	(TODATE('2021-12-22', 'YYYY-MM-DD'),'49603456T','12:04',34,'0.12/60',48,'Desfibril.lable',3,'Desfibril.lable','P0000001'),
	(TODATE('2021-12-22', 'YYYY-MM-DD'),'49603456T','12:06',36,'0',48,'Desfibril.lable',4,'Desfibril.lable','P0000001'),
	(TODATE('2021-12-22', 'YYYY-MM-DD'),'49603456T','12:08',34,'0.12/60',48,'Desfibril.lable',5,'Desfibril.lable','P0000001'),
	(TODATE('2021-12-22', 'YYYY-MM-DD'),'49603456T','12:10',36,'0',72,'Desfibril.lable',6,'Desfibril.lable','P0000001'),
	(TODATE('2022-02-28', 'YYYY-MM-DD'),'49603456T','12:00',34,'0',64,'Desfibril.lable',1,'Desfibril.lable','P0000001'),
	(TODATE('2022-02-28', 'YYYY-MM-DD'),'49603456T','12:02',36,'0',64,'Desfibril.lable',2,'Desfibril.lable','P0000001'),
	(TODATE('2022-02-28', 'YYYY-MM-DD'),'49603456T','12:04',34,'0.16/80',64,'Desfibril.lable',3,'Desfibril.lable','P0000001'),
	(TODATE('2022-02-28', 'YYYY-MM-DD'),'49603456T','12:06',34,'0',64,'Desfibril.lable',4,'Desfibril.lable','P0000001'),
	(TODATE('2022-02-28', 'YYYY-MM-DD'),'49603456T','12:08',36,'0.16/80',64,'Desfibril.lable',5,'Desfibril.lable','P0000001'),
	(TODATE('2022-02-28', 'YYYY-MM-DD'),'49603456T','12:10',34,'0',96,'Desfibril.lable',6,'Desfibril.lable','P0000001');