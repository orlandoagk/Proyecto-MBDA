--Atributos

ALTER TABLE horarios ADD CONSTRAINT check_horarios
CHECK(hora IN ('7:00-8:30','8:30-10:00','10:00-11:30','11:30-13:00','13:00-14:30','14:30-16:00','16:00-17:30','17:30-19:00'));