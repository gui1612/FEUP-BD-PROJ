PRAGMA foreign_keys=ON;

DROP TABLE IF EXISTS TermGrades;
DROP TABLE IF EXISTS Lecturer;
DROP TABLE IF EXISTS Task;
DROP TABLE IF EXISTS Professor;
DROP TABLE IF EXISTS Period;
DROP TABLE IF EXISTS EvaluationEvent;
DROP TABLE IF EXISTS Classroom;
DROP TABLE IF EXISTS Institution;
DROP TABLE IF EXISTS EvaluationType;
DROP TABLE IF EXISTS Term;
DROP TABLE IF EXISTS Subject;
DROP TABLE IF EXISTS GradeComponent;
DROP TABLE IF EXISTS GradeLimit;

CREATE TABLE Term(
    id          INTEGER         PRIMARY KEY,
    name        VARCHAR(255)    CONSTRAINT UniqueName UNIQUE CONSTRAINT NameNotNull NOT NULL,
    startDate   DATE            CONSTRAINT DateNotNull NOT NULL,
    endDate     DATE            CONSTRAINT DateNotNull NOT NULL,

    CONSTRAINT ValidOccurence CHECK (startDate < endDate),
    CONSTRAINT UniqueDate UNIQUE (startDate, endDate)
);

CREATE TABLE Professor(
    id          INTEGER         PRIMARY KEY,
    name        VARCHAR(255)    CONSTRAINT NameNotNull NOT NULL,
    email       VARCHAR(255)    CONSTRAINT UniqueEmail UNIQUE,
    phone       VARCHAR(31),
    website     VARCHAR(255),
    photo       VARCHAR(255)
);

CREATE TABLE Institution(
    id          INTEGER         PRIMARY KEY,
    name        VARCHAR(255)    CONSTRAINT UniqueName UNIQUE CONSTRAINT NameNotNull NOT NULL,
    address     VARCHAR(255)    CONSTRAINT UniqueAddress UNIQUE,
    email       VARCHAR(255)    CONSTRAINT UniqueEmail UNIQUE,
    phone       VARCHAR(255)    CONSTRAINT UniqueWebsite UNIQUE,
    website     VARCHAR(255),
    photo       VARCHAR(255)
);

CREATE TABLE Classroom(
    id          INTEGER         PRIMARY KEY,
    name        VARCHAR(255)    CONSTRAINT NameNotNull NOT NULL,

    classroomLocation CONSTRAINT ClassroomLocationExists REFERENCES Institution ON DELETE CASCADE ON UPDATE CASCADE CONSTRAINT ClassroomLocationNotNull NOT NULL,
    CONSTRAINT UniqueNameLocation UNIQUE (name, classroomLocation)
);

CREATE TABLE GradeLimit(
    id          INTEGER         PRIMARY KEY,
    lower       REAL            CONSTRAINT LowerValueNotNull NOT NULL,
    upper       REAL            CONSTRAINT UpperValueNotNull NOT NULL,

    CONSTRAINT UniqueLimits UNIQUE (lower, upper),
    CONSTRAINT ValidRange CHECK (lower < upper)
);

CREATE TABLE EvaluationType(
    id          INTEGER         PRIMARY KEY,
    name        VARCHAR(15)     CONSTRAINT UniqueName UNIQUE CONSTRAINT NameNotNull NOT NULL CONSTRAINT ValidName CHECK (name IN ('written', 'oral', 'practical'))
);

CREATE TABLE GradeComponent(
    id          INTEGER         PRIMARY KEY,
    name        VARCHAR(255)    CONSTRAINT NameNotNull NOT NULL,   
    value       REAL,
    weight      REAL            CONSTRAINT ValidWeight CHECK (weight >= 0 AND weight <= 1),

    gradeLimit CONSTRAINT GradeLimitExists REFERENCES GradeLimit ON DELETE RESTRICT ON UPDATE CASCADE CONSTRAINT GradeLimitNotNull NOT NULL,
    parent CONSTRAINT ParentExists REFERENCES GradeComponent ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Subject(
    id          INTEGER         PRIMARY KEY,
    name        VARCHAR(255)    CONSTRAINT UniqueName UNIQUE NOT NULL,
    color       VARCHAR(6)      CONSTRAINT ColorNotNull NOT NULL
);

CREATE TABLE Period(
    id          INTEGER         PRIMARY KEY,
    startTime   TIME            CONSTRAINT StartTimeNotNull NOT NULL,
    endTime     TIME            CONSTRAINT EndTimeNotNull NOT NULL,
    weekday     VARCHAR(15)     CONSTRAINT WeekdayNotNull NOT NULL CONSTRAINT ValidWeekday CHECK (weekday IN ('monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday')),
    note        VARCHAR(1023),

    subject CONSTRAINT SubjectExists REFERENCES Subject ON DELETE RESTRICT ON UPDATE CASCADE CONSTRAINT SubjectNotNull NOT NULL,
    term CONSTRAINT TermExists REFERENCES Term ON DELETE RESTRICT ON UPDATE CASCADE CONSTRAINT TermNotNull NOT NULL,
    classroom CONSTRAINT ClassroomExists REFERENCES Classroom ON DELETE RESTRICT ON UPDATE CASCADE CONSTRAINT ClassroomNotNull NOT NULL,
    CONSTRAINT ValidOccurence CHECK (startTime < endTime),
    CONSTRAINT UniqueDateTimeTerm UNIQUE (startTime, endTime, weekday, term)
);

CREATE TABLE Task(
    id              INTEGER         PRIMARY KEY,
    name            VARCHAR(255)    CONSTRAINT NameNotNull NOT NULL,
    description     VARCHAR(1023),
    done            INTEGER         CONSTRAINT DoneNotNull NOT NULL CONSTRAINT IsBoolean CHECK (done IN (0, 1)),

    subject CONSTRAINT SubjectExists REFERENCES Subject ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE EvaluationEvent(
    id              INTEGER         PRIMARY KEY,
    startDateTime   DATETIME        CONSTRAINT StartDateTimeNotNull NOT NULL,
    endDateTime     DATETIME        CONSTRAINT EndDateTimeNotNull NOT NULL,

    subject CONSTRAINT SubjectExists REFERENCES Subject ON DELETE CASCADE ON UPDATE CASCADE CONSTRAINT SubjectNotNull NOT NULL,
    classroom CONSTRAINT ClassroomExists REFERENCES Classroom ON DELETE SET NULL ON UPDATE CASCADE,
    type CONSTRAINT EvaluationTypeExists REFERENCES EvaluationType ON DELETE RESTRICT ON UPDATE CASCADE CONSTRAINT EvaluationTypeNotNull NOT NULL,
    grade CONSTRAINT GradeComponentExists REFERENCES GradeComponent ON DELETE CASCADE ON UPDATE CASCADE CONSTRAINT GradeComponentNotNull NOT NULL,
    CONSTRAINT ValidOccurence CHECK (startDateTime < endDateTime)
);

CREATE TABLE TermGrades(
    term CONSTRAINT TermExists REFERENCES Term ON DELETE RESTRICT ON UPDATE CASCADE CONSTRAINT TermNotNull NOT NULL,
    subject CONSTRAINT SubjectExists REFERENCES Subject ON DELETE RESTRICT ON UPDATE CASCADE CONSTRAINT SubjectNotNull NOT NULL,
    grade CONSTRAINT UniqueGrade PRIMARY KEY CONSTRAINT GradeComponentExists REFERENCES GradeComponent ON DELETE RESTRICT ON UPDATE CASCADE CONSTRAINT GradeNotNull NOT NULL,
    CONSTRAINT UniqueTermSubject UNIQUE (term, subject)
);

CREATE TABLE Lecturer(
    period REFERENCES Period ON DELETE RESTRICT ON UPDATE CASCADE CONSTRAINT PeriodNotNull NOT NULL,
    professor REFERENCES Professor ON DELETE RESTRICT ON UPDATE CASCADE CONSTRAINT ProfessorNotNull NOT NULL,
    CONSTRAINT UniquePeriodProfessor PRIMARY KEY (professor, period)
);
