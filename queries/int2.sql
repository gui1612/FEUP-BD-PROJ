SELECT T.name,
    T.description,
    S.name AS subject
FROM Subject S,
    Task T
WHERE T.done = 0
    AND S.id = T.subject
ORDER BY S.name ASC,
    T.name ASC;