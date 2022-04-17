WITH RECURSIVE Tree(
    term,
    id,
    value,
    weight,
    ubound,
    lbound,
    topUBound,
    topLBound
) AS (
    SELECT tg.term,
        gc.id,
        gc.value,
        1,
        gl.upper,
        gl.lower,
        gl.upper,
        gl.lower
    FROM TermGrades tg,
        GradeComponent gc,
        Subject s,
        GradeLimit gl
    WHERE gc.id = tg.grade
        AND gl.id = gc.gradeLimit
        AND s.id = tg.subject
        AND s.name = 'Fundamentos da Programação'
        AND gc.weight IS NOT NULL
    UNION ALL
    SELECT Tree.term,
        GradeComponent.id,
        GradeComponent.value,
        GradeComponent.weight * Tree.weight,
        GradeLimit.upper,
        GradeLimit.lower,
        Tree.topUBound,
        Tree.topLBound
    FROM Tree,
        GradeComponent,
        GradeLimit
    WHERE Tree.id = GradeComponent.parent
        AND GradeLimit.id = GradeComponent.gradeLimit
        AND GradeComponent.weight IS NOT NULL
)
SELECT Term.name,
    round(
        sum(weight * (value - lbound) / (ubound - lbound)) * (topUBound - topLBound) + topLBound,
        2
    ) as grade
FROM Tree, Term
WHERE Term.id = Tree.term
    AND Tree.value IS NOT NULL
    AND Tree.id NOT IN (
        SELECT gc.parent
        FROM GradeComponent gc
        WHERE gc.parent IS NOT NULL
    )
GROUP BY Tree.term;