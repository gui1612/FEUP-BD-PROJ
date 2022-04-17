CREATE TRIGGER overlappingPeriod
BEFORE INSERT ON Period 
FOR EACH ROW 
BEGIN
    SELECT RAISE(
            ABORT,
            'A period within that schedule already exists'
        )
    WHERE EXISTS (
            SELECT *
            FROM Period P
            WHERE P.id <> New.id
                AND P.term = New.term
                AND P.weekday = New.weekday
                AND NOT (
                    (
                        New.startTime <= P.startTime
                        AND New.endTime <= P.startTime
                    )
                    OR (
                        New.startTime >= P.endTime
                        AND New.endTime >= P.endTime
                    )
                )
        );
END;