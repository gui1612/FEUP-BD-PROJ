WITH RECURSIVE Tree(
    id,
    parent,
    weight,
    term,
    name,
    value,
    gradeLimit,
    subject
) AS (
    SELECT gc.id,
        NULL,
        1,
        tg.term,
        gc.name,
        gc.value,
        gc.gradeLimit,
        tg.subject
    FROM TermGrades tg,
        GradeComponent gc
    WHERE gc.id = tg.grade
        AND gc.weight IS NOT NULL
    UNION ALL
    SELECT gc.id,
        t.id,
        gc.weight,
        t.term,
        gc.name,
        gc.value,
        gc.gradeLimit,
        t.subject
    FROM Tree t,
        GradeComponent gc
    WHERE gc.parent = t.id
        AND gc.weight IS NOT NULL
),
GradeScalars(
    id,
    parent,
    weight,
    term,
    name,
    value,
    gradeLimit,
    subject
) AS (
    SELECT t.id,
        parent,
        weight,
        term,
        name,
        (value - lower) / (upper - lower),
        gradeLimit,
        subject
    FROM Tree t,
        GradeLimit gl
    WHERE gl.id = t.gradeLimit
        AND t.id NOT IN (
            SELECT parent
            FROM Tree
            WHERE parent IS NOT NULL
        )
    UNION ALL
    SELECT gs.parent,
        t.parent,
        t.weight,
        t.term,
        t.name,
        gs.value * gs.weight,
        t.gradeLimit,
        t.subject
    FROM GradeScalars gs,
        Tree t
    WHERE gs.parent = t.id
)
SELECT DISTINCT t.name as term,
    s.name as subject,
    gs.name as component,
    round(sum(value) * (upper - lower) + lower, 2) as grade,
    weight,
    upper as max,
    lower as min
FROM GradeScalars gs,
    GradeLimit gl,
    Term t,
    Subject s
WHERE gl.id = gs.gradeLimit
    AND t.id = gs.term
    AND s.id = gs.subject
    AND gs.value IS NOT NULL
    AND NOT EXISTS (
        SELECT id
        FROM GradeScalars
        WHERE term = gs.term
            AND subject = gs.subject
            AND id = gs.id
            AND value IS NULL
    )
GROUP BY gs.term,
    gs.id
ORDER BY t.startDate DESC,
    t.name ASC,
    s.name ASC,
    gs.id ASC;