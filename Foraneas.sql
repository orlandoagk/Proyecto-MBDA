alter table registros add constraint registro_idEstu
foreign key (id_estudiante) references estudiantes(id);

ALTER TABLE cursosxhorarios ADD CONSTRAINT FK_cursosxhorario_curso
FOREIGN KEY (id_curso) REFERENCES cursos(id);

ALTER TABLE cursosxhorarios ADD CONSTRAINT FK_cursosxhorario_horario
FOREIGN KEY (id_horario) REFERENCES horarios(id);

alter table registros add constraint registro_idCurso
foreign key (id_curso) references cursos(id);

alter table estudiantesXdecanaturas add constraint estuXdeca_idEstudiante
foreign key (id_estudiante) references estudiantes(id);

alter table estudiantesXdecanaturas add constraint estuXdeca_idDecanatura
foreign key (id_decanatura) references decanaturas(id);

alter table cursosXprofesores add constraint cursoXpro_profesores
foreign key (id_profesor) references profesores(id);

alter table cursosXprofesores add constraint cursoXpro_curso
foreign key (id_curso) references cursos(id);

alter table cursosxhorarios add constraint cursos_idSalon
foreign key (id_salon) references salones(id);