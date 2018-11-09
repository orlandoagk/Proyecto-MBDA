-- Tuplas

ALTER TABLE estudiantes ADD CONSTRAINT CH_TID_estudiante
CHECK (tid in ('C.C','T.I','N.P') AND REGEXP_LIKE(correo,'^[0-9a-zA-Z]@[0-9a-zA-Z].[a-z]+$')); 

ALTER TABLE profesores ADD CONSTRAINT CH_TID_Profesores
CHECK (tid in ('C.C','N.P') AND REGEXP_LIKE(correo,'^[0-9a-zA-Z]@[0-9a-zA-Z].[a-z]+$')); 

ALTER TABLE salones ADD CONSTRAINT CH_Tbloque_salones
CHECK (bloque in ('A','B','C','D','F','G','H','I') AND capacidad > 0);

ALTER TABLE registros ADD CONSTRAINT CH_nota_registros
CHECK (REGEXP_LIKE(nota_final,'^[0-9]{1}.[0-9]{1,2}+$') AND estado IN ('Cursando','Cancelado','Aprobado','Perdida'));