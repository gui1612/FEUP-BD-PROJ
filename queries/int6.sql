SELECT upper(substr(Period.weekday, 1, 1)) || lower(substr(Period.weekday, 2)) as weekday,
    strftime('%Hh%M', Period.startTime) as startTime,
    strftime('%Hh%M', Period.endTime) as endTime,
    Classroom.name as classroom,
    Subject.name as subject,
    Term.name as term,
    Institution.name as institution
FROM Institution,
    Classroom,
    Period,
    Term,
    Subject
WHERE Institution.id = Classroom.classroomLocation
    AND Period.classroom = Classroom.id
    AND Period.subject = Subject.id
    AND Period.term = Term.id
ORDER BY Institution.name ASC,
    Term.startDate DESC,
    Term.name ASC,
    case
        when Period.weekday = 'monday' then 1
        when Period.weekday = 'tuesday' then 2
        when Period.weekday = 'wednesday' then 3
        when Period.weekday = 'thursday' then 4
        when Period.weekday = 'friday' then 5
        when Period.weekday = 'saturday' then 6
        when Period.weekday = 'sunday' then 7
    end ASC,
    Period.startTime ASC;