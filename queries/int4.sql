WITH RECURSIVE Tree(
    term,
    id,
    value,
    weight,
    ubound,
    lbound
) AS (
    SELECT tg.term,
        gc.id,
        gc.value,
        gc.weight,
        gl.upper,
        gl.lower
    FROM TermGrades tg,
        GradeComponent gc,
        GradeLimit gl
    WHERE gc.id = tg.grade
        AND gl.id = gc.gradeLimit
        AND gc.weight IS NOT NULL
    UNION ALL
    SELECT Tree.term,
        GradeComponent.id,
        GradeComponent.value,
        GradeComponent.weight * Tree.weight,
        GradeLimit.upper,
        GradeLimit.lower
    FROM Tree,
        GradeComponent,
        GradeLimit
    WHERE Tree.id = GradeComponent.parent
        AND GradeLimit.id = GradeComponent.gradeLimit
        AND GradeComponent.weight IS NOT NULL
)
SELECT Term.name,
    round(
        sum(weight * (value - lbound) / (ubound - lbound)) * (GradeLimit.upper - GradeLimit.lower) + GradeLimit.lower,
        2
    ) as grade,
    GradeLimit.upper as max,
    GradeLimit.lower as min
FROM Tree,
    Term,
    GradeLimit
WHERE Term.id = Tree.term
    AND Tree.value IS NOT NULL
    AND Tree.id NOT IN (
        SELECT gc.parent
        FROM GradeComponent gc
        WHERE gc.parent IS NOT NULL
    )
    AND GradeLimit.id IN (
        SELECT GradeComponent.gradeLimit
        FROM TermGrades,
            GradeComponent
        WHERE TermGrades.grade = GradeComponent.id
            AND TermGrades.term = Term.id
        GROUP BY GradeComponent.gradeLimit
        ORDER BY count(*) DESC,
            id ASC
        LIMIT 1
    )
GROUP BY Tree.term
ORDER BY Term.startDate DESC, Term.name ASC;