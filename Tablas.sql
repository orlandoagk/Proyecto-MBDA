create table estudiantes(
id number(7) not null,
nombre varchar(40) not null,
tid char(3) not null,
nud number(11) not null,
fecha_ingreso DATE not null,
correo varchar(60) not null,
correo_institucional varchar(60) not null,
semestre number(2) not null);

CREATE TABLE horarios(
id number(2) not null,
hora VARCHAR(20) not null);

CREATE TABLE cursosxhorarios(
id_curso number(2) not null,
id_horario number(2) not null,
id_salon number(4) not null);

create table registros(
id_estudiante NUMBER(7) not null,
id_curso NUMBER(3) not null,
nota_final VARCHAR(4) null,
estado VARCHAR(10) not null,
semestre NUMBER(2) not null
);

create table decanaturas(
id number(3) not null,
nombre varchar(50) not null,
nombre_decano varchar(20) not null
);

create table estudiantesXdecanaturas(
id_estudiante number (7) not null,
id_decanatura number (3) not null
);

create table profesores(
id number(7) not null,
nombre varchar(20) not null,
titulo varchar(30) not null,
tid char(3) not null,  
nud number(10) not null,
correo varchar(60) not null,
correo_institucional varchar(60) not null
);

create table cursosXprofesores(
id_profesor number(7) not null,
id_curso number(3) not null
);

create table cursos(
id number(3) not null,
nombre varchar(40) not null,
siglas varchar(5) not null,
estudiantes_escritos number(2) not null);

create table salones(
id number(4)not null,
bloque varchar(2) not null,
capacidad number(2) not null
);
