.print "1 - deve falhar"
INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    40,
    '09:30:00',
    '10:30:00',
    'monday',
    3,
    1,
    1
);

.print "2 - deve funcionar"
INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    41,
    '23:30:00',
    '24:00:00',
    'monday',
    3,
    1,
    1
);