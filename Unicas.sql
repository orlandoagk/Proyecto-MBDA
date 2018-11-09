ALTER TABLE estudiantes ADD CONSTRAINT Unique_estudiantes
UNIQUE (nud,correo,correo_institucional);

ALTER TABLE profesores ADD CONSTRAINT Unique_profesores
UNIQUE (nud,correo,correo_institucional);

ALTER TABLE cursos ADD CONSTRAINT unique_cursos
UNIQUE(siglas);
ALTER TABLE horarios ADD CONSTRAINT unique_horarios
UNIQUE(hora);