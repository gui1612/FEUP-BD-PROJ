WITH NodesSimilar AS (
    SELECT gc1.id AS id1,
        gc2.id AS id2
    FROM GradeComponent gc1,
        GradeComponent gc2
    WHERE gc1.id != gc2.id
        AND NOT EXISTS (
            WITH Weights1 AS (
                SELECT count(*) AS nr,
                    weight
                FROM GradeComponent
                WHERE parent = gc1.id
                GROUP BY weight
            ),
            Weights2 AS (
                SELECT count(*) AS nr,
                    weight
                FROM GradeComponent
                WHERE parent = gc2.id
                GROUP BY weight
            )
            SELECT *
            FROM (
                    SELECT *
                    FROM Weights1
                    EXCEPT
                    SELECT *
                    FROM Weights2
                )
            UNION ALL
            SELECT *
            FROM (
                    SELECT *
                    FROM Weights2
                    EXCEPT
                    SELECT *
                    FROM Weights1
                )
        )
)
SELECT s1.name as subject1,
    t1.name as term1,
    s2.name as subject2,
    t2.name as term2
FROM Term t1,
    Term t2,
    Subject s1,
    Subject s2,
    TermGrades tg1,
    TermGrades tg2,
    GradeComponent gc1,
    GradeComponent gc2
WHERE tg1.grade = gc1.id
    AND tg1.subject = s1.id
    AND tg1.term = t1.id
    AND tg2.grade = gc2.id
    AND tg2.subject = s2.id
    AND tg2.term = t2.id
    AND gc1.id < gc2.id
    AND gc1.parent IS NULL
    AND gc2.parent IS NULL
    AND 1 in (
        WITH RECURSIVE Similar(id1, id2) AS (
            SELECT gc1.id,
                gc2.id
            WHERE (gc1.id, gc2.id) IN NodesSimilar
            UNION ALL
            SELECT c1.id,
                c2.id
            FROM Similar,
                GradeComponent c1,
                GradeComponent c2
            WHERE Similar.id1 = c1.parent
                AND Similar.id2 = c2.parent
                AND (c1.id, c2.id) IN NodesSimilar
        ),
        Tree1(id) AS (
            SELECT gc1.id
            UNION ALL
            SELECT GradeComponent.id
            FROM Tree1,
                GradeComponent
            WHERE Tree1.id = GradeComponent.parent
        ),
        Tree2(id) AS (
            SELECT gc2.id
            UNION ALL
            SELECT GradeComponent.id
            FROM Tree2,
                GradeComponent
            WHERE Tree2.id = GradeComponent.parent
        )
        SELECT NOT EXISTS (
                SELECT *
                FROM (
                        SELECT DISTINCT id1 as id
                        FROM Similar
                        EXCEPT
                        SELECT id
                        FROM Tree1
                    )
                UNION ALL
                SELECT *
                FROM (
                        SELECT id
                        FROM Tree1
                        EXCEPT
                        SELECT DISTINCT id1 as id
                        FROM Similar
                    )
            )
            AND NOT EXISTS (
                SELECT *
                FROM (
                        SELECT DISTINCT id2 as id
                        FROM Similar
                        EXCEPT
                        SELECT id
                        FROM Tree2
                    )
                UNION ALL
                SELECT *
                FROM (
                        SELECT id
                        FROM Tree2
                        EXCEPT
                        SELECT DISTINCT id2 as id
                        FROM Similar
                    )
            )
            AND NOT EXISTS (
                SELECT *,
                    count(*) as nr1
                FROM Similar s1,
                    (
                        SELECT id2,
                            count(*) as nr2
                        FROM Similar
                        GROUP BY id2
                    ) s2
                WHERE s2.id2 = s1.id2
                GROUP BY s1.id1
                HAVING nr1 != nr2
            ) as equals
    )
ORDER BY t1.startDate DESC,
    t1.name ASC,
    t2.startDate DESC,
    t2.name ASC,
    s1.name ASC,
    s2.name ASC;