--Triggers

CREATE OR REPLACE TRIGGER registros_A BEFORE INSERT ON registros
FOR EACH ROW
DECLARE
nsemestre NUMBER;
BEGIN
    :NEW.estado := 'Cursando';
    SELECT semestre INTO nsemestre FROM estudiantes WHERE :NEW.id_estudiante = id;
    :NEW.semestre := nsemestre;
END;
/
CREATE OR REPLACE TRIGGER registros_v BEFORE UPDATE ON registros
FOR EACH ROW
BEGIN
    IF :NEW.nota_final >= 3 THEN
    :NEW.estado := 'Aprobado';
    ELSE
    :NEW.estado := 'Reprobado';
    END IF;
END;
/
CREATE OR REPLACE TRIGGER decanatura_R BEFORE UPDATE ON decanaturas
FOR EACH ROW
BEGIN
    IF :NEW.nombre != :OLD.nombre THEN
    raise_application_error(-106,'No puedes modificar el nombre');
    END IF;
    IF :NEW.id != :OLD.id THEN
    raise_application_error(-107,'No puedes modificar el id');
    END IF;
END;
/
CREATE OR REPLACE TRIGGER Estudiantes_R BEFORE UPDATE ON estudiantes
FOR EACH ROW
BEGIN
    IF :NEW.Fecha_Ingreso != :OLD.Fecha_Ingreso THEN
    raise_application_error(-102,'No puedes modificar la fecha de ingreso');
    END IF;
    IF :NEW.correo_institucional != :OLD.correo_institucional THEN
    raise_application_error(-103,'No puedes modificar el correo institucional');
    END IF;
    IF :NEW.nombre != :OLD.nombre THEN
    raise_application_error(-104,'No puedes modificar el nombre del estudiante');
    END IF;
END;
/

CREATE OR REPLACE TRIGGER estudiantesxdecan_A BEFORE INSERT ON estudiantesXdecanaturas
FOR EACH ROW
DECLARE
numero_decanaturas NUMBER;
decanatura_existe NUMBER;
BEGIN
    SELECT COUNT(*) INTO numero_decanaturas FROM estudiantesXdecanaturas WHERE :NEW.id_estudiante = id_estudiante;
    IF numero_decanaturas = 2 THEN
    raise_application_error(-20354,'No puedes inscribir a un estudiante a mas de 2 programas academicos');
    END IF;
    SELECT COUNT(*) INTO decanatura_existe FROM decanaturas WHERE :NEW.id_decanatura = id;
    IF decanatura_existe = 0 THEN
    raise_application_error(-20353,'No existe esa decanatura');
    END IF;
END;
/

CREATE OR REPLACE TRIGGER Estudiantes_A BEFORE INSERT ON estudiantes
FOR EACH ROW
DECLARE
nombrecorreo VARCHAR(50);
cantidad NUMBER;
s_cantidad VARCHAR(30) := 'abcdefghijklmnopqrstxyz';
BEGIN
    SELECT count(id)+1 INTO :NEW.id FROM estudiantes;
    :NEW.fecha_ingreso := SYSDATE;
    :NEW.semestre := 1;
    nombrecorreo := lower(REPLACE(:NEW.nombre,' ','.'));
    SELECT count(*) INTO cantidad FROM estudiantes WHERE nombre = :NEW.nombre;
    IF cantidad > 0 THEN
    :NEW.correo_institucional := CONCAT(CONCAT(nombrecorreo,SUBSTR(s_cantidad,cantidad,1)),'@mail.escuelaing.edu.co');
    ELSE
    :NEW.correo_institucional := CONCAT(nombrecorreo,'@mail.escuelaing.edu.co');
    END IF;
END;
/



CREATE OR REPLACE TRIGGER Estudiantes_V BEFORE UPDATE ON estudiantes
FOR EACH ROW
BEGIN
    IF :NEW.semestre < :OLD.semestre THEN
    raise_application_error(-120,'No se puede puede bajar el semestre de un estudiante');
    END IF;
END;
/

CREATE OR REPLACE TRIGGER Profesores_A BEFORE INSERT ON profesores
FOR EACH ROW
DECLARE
nombrecorreo VARCHAR(50);
cantidad NUMBER;
BEGIN
    SELECT count(id)+1 INTO :NEW.id FROM profesores;
    nombrecorreo := lower(REPLACE(:NEW.nombre,' ','.'));
    SELECT count(*) INTO cantidad FROM profesores WHERE nombre = :NEW.nombre;
    IF cantidad > 0 THEN
    :NEW.correo_institucional := CONCAT(CONCAT(nombrecorreo,TO_CHAR(cantidad)),'@escuelaing.edu.co');
    ELSE
    :NEW.correo_institucional := CONCAT(nombrecorreo,'@escuelaing.edu.co');
    END IF;
END;
/

--TCapacidad

create or replace trigger TG_salonesCapacidad_Validar
before update on salones 
for each row
begin
    if :old.id!=:new.id or :old.bloque!=:new.bloque then 
        raise_application_error(-20002,'Solo se puede modificar la capacidad');
    end if;
end;
/

--Tnum_curso

create or replace trigger TG_cursoNume_Auto
before insert on cursos
for each row
declare 
    var number;
begin
    select count(*)+1 into var from cursos;
    :new.numero_curso :=  var;
end;
/
