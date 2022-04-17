CREATE TRIGGER validSubjectPeriod
BEFORE INSERT ON Period
FOR EACH ROW
BEGIN
    SELECT RAISE(
            ABORT,
            'That subject does not occurr on the term of this period'
        )
    WHERE NOT EXISTS (
            SELECT TermGrades.term, TermGrades.subject
            FROM TermGrades
            WHERE TermGrades.subject = New.subject
                AND TermGrades.term = New.term
        );
END;
