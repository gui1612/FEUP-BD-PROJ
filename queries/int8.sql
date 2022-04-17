SELECT GC.name as name,
    strftime('%Y-%m-%d %Hh%M', EE.startDateTime) as startDateTime,
    strftime('%Y-%m-%d %Hh%M', EE.endDateTime) as endDateTime,
    S.name as subject,
    ET.name as type
FROM EvaluationEvent EE,
    GradeComponent GC,
    Subject S,
    EvaluationType ET
WHERE EE.subject = S.id
    AND EE.type = ET.id
    AND GC.id = EE.grade
    AND date('now') <= EE.endDateTime
ORDER BY EE.endDateTime ASC
LIMIT 3;