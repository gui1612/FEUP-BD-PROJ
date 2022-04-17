SELECT 
    GC.name as name,
    S.name as subject,
    strftime('%Y-%m-%d %Hh%M', EE.startDateTime) as startDateTime,
    strftime('%Y-%m-%d %Hh%M', EE.endDateTime) as endDateTime
FROM EvaluationEvent EE, GradeComponent GC, Subject S
WHERE EE.subject=S.id AND GC.id=EE.grade AND endDateTime < datetime('now')
ORDER BY startDateTime DESC, endDateTime DESC, S.name ASC; 