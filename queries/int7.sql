SELECT DISTINCT Pr.name as professor,
    S.name as subject
FROM Lecturer L,
    Professor as Pr,
    Period as Pe,
    Subject as S
Where L.period = Pe.id
    AND L.professor = Pr.id
    AND Pe.subject = S.id
ORDER BY S.name ASC,
    Pr.name ASC;