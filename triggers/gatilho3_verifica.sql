.print "1 - deve falhar"
INSERT INTO GradeComponent(id, name, value, weight, gradeLimit, parent) VALUES (131, 'Enunciado de MEST', 30, 0.8, 1, NULL);

.print "2 - deve funcionar"
INSERT INTO GradeComponent(id, name, value, weight, gradeLimit, parent) VALUES (130, 'Teste Surpresa', 15, 1, 1, NULL);