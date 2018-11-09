--PoblarOk
--Estudiantes
INSERT INTO estudiantes VALUES(2145271,'Orlando Gelves','C.C',1067961563,TO_DATE('2017/01/10', 'yyyy/mm/dd'),'orlandoantoni@hotmail.com','orlando.gelves@mail.escuelaing.edu.co',4);
INSERT INTO estudiantes VALUES(2154937,'Wilson Velandia','C.C',1049657540,TO_DATE('2017/01/10', 'yyyy/mm/dd'),'wilsoncvelandias@gmail.com','wilson.velandia@mail.escuelaing.edu.co',4);
INSERT INTO estudiantes VALUES(2149381,'Camilo Torres','T.I',1049653456,TO_DATE('2013/03/24', 'yyyy/mm/dd'),'camilocachon01@yahoo.es','camilo.torres@mail.escuelaing.edu.co',2);
INSERT INTO estudiantes VALUES(2154829,'Fernanda Gomez','C.C',1049485841,TO_DATE('2011/03/11', 'yyyy/mm/dd'),'fernanditapop@gmail.com','fernanda.gomez@mail.escuelaing.edu.co',8);
INSERT INTO estudiantes VALUES(2123484,'Alejandra Kerguelen','C.C',1094773840,TO_DATE('2015/09/12', 'yyyy/mm/dd'),'alejitakd4@gmail.com','alejandra.kerguelen@mail.escuelaing.edu.co',6);

--Decanaturas
INSERT INTO decanaturas VALUES(1,'Ingeniería de Sistemas','Oswaldo Castillo');
INSERT INTO decanaturas VALUES(2,'Ingeniería Industrial','Pedro Cifuentes');
INSERT INTO decanaturas VALUES(3,'Ingeniería Mecánica','Rosa Perez');
INSERT INTO decanaturas VALUES(4,'Ingeniería Civil','Maria Tevez');
INSERT INTO decanaturas VALUES(5,'Ingeniería Ambiental','Juan Cardenas');

--estudiantesXdecanatura
INSERT INTO estudiantesxdecanaturas VALUES(2154937,2);
INSERT INTO estudiantesxdecanaturas VALUES(2145271,1);
INSERT INTO estudiantesxdecanaturas VALUES(2154937,5);
INSERT INTO estudiantesxdecanaturas VALUES(2123484,3);
INSERT INTO estudiantesxdecanaturas VALUES(2154829,2);
INSERT INTO estudiantesxdecanaturas VALUES(2154829,4);
INSERT INTO estudiantesxdecanaturas VALUES(2149381,5);

--Profesores
INSERT INTO profesores VALUES(1,'Mauricio Ruiz','Doctor','C.C',1014310217,'profemauro@gmail.com','mauricio.ruiz@escuelaing.edu.co');
INSERT INTO profesores VALUES(2,'Hector Lavoe','Master','C.C',1018473217,'elgranmusico@gmail.com','hector.lavoe@escuelaing.edu.co');
INSERT INTO profesores VALUES(3,'Hernan Velasco','Profesional','C.C',1014358394,'hernanvelasco@hotmail.com','hernan.velasco@escuelaing.edu.co');
INSERT INTO profesores VALUES(4,'Jennifer Porras','Doctor','C.C',1092810217,'jenniferr03@msn.com','jennifer.porras@escuelaing.edu.co');
INSERT INTO profesores VALUES(5,'Lina Tejeiro','Licenciado','C.C',1014485327,'linaactriz@gmail.com','lina.tejeiro@escuelaing.edu.co');
INSERT INTO profesores VALUES(6,'Salomon Garcia','Profesional','C.C',1467520217,'salmonpicado@gmail.com','salomon.garcia@escuelaing.edu.co');
INSERT INTO profesores VALUES(7,'Gino Argazzi','Profesional','C.C',1042201317,'ginoargazzi1998@gmail.com','gino.argazzi@escuelaing.edu.co');
INSERT INTO profesores VALUES(8,'Francisco Galán','Master','C.C',1073411201,'galanasofran@gmail.com','francisco.galan@escuelaing.edu.co');

--Salones

insert into salones values(301,'D',39);
insert into salones values(107,'F',30);
insert into salones values(207,'G',43);
insert into salones values(205,'C',40);
insert into salones values(303,'H',45);

--Cursos

insert into cursos values (3,'Programacion Imperativa Modular',303,6,'PIMO');

--cursosXprofesores

insert into cursosXprofesores values();

--Registros
INSERT INTO registros VALUES(2145271,1,'3,4','Aprobado',2);
INSERT INTO registros VALUES(2145271,7,'3,8','Cursando',1);
INSERT INTO registros VALUES(2154937,5,'3,2','Aprobado',4);
INSERT INTO registros VALUES(2154829,3,'1','Cancelado',7);
INSERT INTO registros VALUES(2154829,1,'5','Aprobado',1);
INSERT INTO registros VALUES(2154937,2,'2,2','Perdida',3);
INSERT INTO registros VALUES(2123484,3,'3,2','Aprobado',9);

--Horarios

--CursosXHorarios
