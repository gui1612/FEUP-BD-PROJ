.print "1 - deve funcionar"
INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
  89, 
  '16:30:00', 
  '17:30:00', 
  'saturday', 
  11, 
  3, 
  9 
);

.print "2 - deve falhar"
INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
  100, 
  '18:30:00', 
  '20:30:00', 
  'sunday', 
  1, 
  2, 
  9
);
