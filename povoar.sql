PRAGMA foreign_keys=ON;

-- Term

INSERT INTO Term VALUES (1, '1º Semestre 2020/2021', '2020-10-06', '2021-03-05');
INSERT INTO Term VALUES (2, '2º Semestre 2020/2021', '2021-02-22', '2021-07-16');
INSERT INTO Term VALUES (3, '1º Semestre 2021/2022', '2021-10-18', '2022-03-11');

-- Institutions

INSERT INTO Institution(id, name, address, email, phone, website) VALUES (
    1,
    'Faculdade de Engenharia da Universidade do Porto',
    'Rua Dr. Roberto Frias, s/n 4200-465 Porto PORTUGAL',
    'feup@fe.up.pt',
    '+351 22 508 1411',
    'https://sigarra.up.pt/feup'
);

-- Professors

INSERT INTO Professor(id, name, email, phone) VALUES (
    1,
    'António Joaquim Mendes Ferreira',
    'ferreira@fe.up.pt',
    '+351 22 508 3462'
);

INSERT INTO Professor(id, name, email, phone) VALUES (
    2,
    'Alexandre Miguel Prior Afonso',
    'aafonso@fe.up.pt',
    '+351 22 508 1365'
);

INSERT INTO Professor(id, name, email) VALUES (
    3,
    'Luís Jorge Lima Ferras',
    'lferras@fe.up.pt'
);

INSERT INTO Professor(id, name, email, phone) VALUES (
    4,
    'António José Duarte Araújo',
    'aja@fe.up.pt',
    '+351 22 508 3305'
);

INSERT INTO Professor(id, name, email, phone) VALUES (
    5,
    'João Paulo de Castro Canas Ferreira',
    'jcf@fe.up.pt',
    '+351 22 508 3367'
);

INSERT INTO Professor(id, name, email) VALUES (
    6,
    'Afonso Manuel Maia Lopes Salgado de Sousa',
    'ammiss@fe.up.pt'
);

INSERT INTO Professor(id, name, email, phone) VALUES (
    7,
    'João António Correia Lopes',
    'jlopes@fe.up.pt',
    '+351 22 508 3375'
);

INSERT INTO Professor(id, name, email, phone) VALUES (
    8,
    'Gabriel de Sousa Torcato David',
    'gtd@fe.up.pt',
    '+351 22 508 3224'
);

INSERT INTO Professor(id, name, email) VALUES (
    9,
    'Renato Borges Araujo Moura Soeiro',
    'rsoeiro@fe.up.pt'
);

------------------------------------------------------ 

INSERT INTO Professor(id, name, email, phone) VALUES (
    10,
    'Ana Maria Azevedo Neves',
    'ananeves@fe.up.pt',
    '+351 22 508 2206'
);

INSERT INTO Professor(id, name, email, phone) VALUES (
    11,
    'José Augusto Trigo Barbosa',
    'jtrigo@fe.up.pt',
    '+351 22 508 3461'
);

INSERT INTO Professor(id, name, email, phone, website) VALUES (
    12, 
    'Jaime Enrique Villate Matiz', 
    'villate@fe.up.pt', 
    '+351 22 508 3138', 
    'https://villate.org/'
);

INSERT INTO Professor(id, name, email) VALUES (
    13,
    'Mercedes Esteves Filho',
    'mfilho@fe.up.pt'
);

INSERT INTO Professor(id, name, email, phone) VALUES (
    14,
    'António Miguel da Fonseca Fernandes Gomes',
    'agomes@fe.up.pt',
    '+351 22 508 1573'
);

INSERT INTO Professor(id, name, email, phone) VALUES (
    15,
    'João Pedro Carvalho Leal Mendes Moreira',
    'jmoreira@fe.up.pt',
    '+351 22 508 1573'
);

INSERT INTO Professor(id, name, email, phone) VALUES (
    16,
    'Maria Alexandra Ramalho de Oliveira',
    'maoliveira@fe.up.pt',
    '+351 225083438'
);

INSERT INTO Professor(id, name, email) VALUES (
    17,
    'João Paulo Fernandes',
    'jpaulo@fe.up.pt'
);

INSERT INTO Professor(id, name, email, phone) VALUES (
    18,
    'Jorge Alves da Silva',
    'jsilva@fe.up.pt',
    '+351 22 508 3394'
);

------------------------------------------------------

INSERT INTO Professor(id, name, email, phone) VALUES (
    19, 
    'Ana Paula Cunha da Rocha', 
    'arocha@fe.up.pt', 
    '+351 22 508 3322'
);

INSERT INTO Professor(id, name, email) VALUES (
    20, 
    'Pedro Manuel Pinto Ribeiro', 
    'pribeiro@fc.up.pt'
);


INSERT INTO Professor(id, name, email, phone) VALUES (
    21,
    'Carla Alexandra Teixeira Lopes',
    'ctl@fe.up.pt',
    '+351 22 508 3246'
);
    
INSERT INTO Professor(id, name, email, phone) VALUES (
    22, 
    'Michel Celestino Paiva Ferreira', 
    'mpferrei@fc.up.pt', 
    '+351 933 848 797'
);

INSERT INTO Professor(id, name, email, phone) VALUES (
    23, 
    'André Monteiro de Oliveira Restivo', 
    'arestivo@fe.up.pt', 
    '+351 22 508 3321'
);

INSERT INTO Professor(id, name, email) VALUES (
    24, 
    'Rui Filipe Lima Maranhão de Abreu', 
    'rma@fe.up.pt'
);

INSERT INTO Professor(id, name, email) VALUES (
    25, 
    'João Carlos Viegas Martins Bispo', 
    'jbispo@fe.up.pt'
);
    
INSERT INTO Professor(id, name, email, phone) VALUES (
    26, 
    'João Manuel Paiva Cardoso', 
    'jmpc@fe.up.pt', 
    '+351 22 508 3901'
);

-- Grade Limits

INSERT INTO GradeLimit VALUES (1, 0, 20);
INSERT INTO GradeLimit VALUES(2, 0, 1);

-- Evaluation Types

INSERT INTO EvaluationType VALUES (1, 'oral');
INSERT INTO EvaluationType VALUES (2, 'practical');
INSERT INTO EvaluationType VALUES (3, 'written');

-- Subjects and Grade Components

INSERT INTO GradeComponent(id, name, gradeLimit, value, weight) VALUES (1, 'Avaliação de ALGE', 1, 18, 0.2);
INSERT INTO GradeComponent(id, name, gradeLimit, value, weight) VALUES (2, 'Avaliação de AMAT', 1, 20, 0.2);
INSERT INTO GradeComponent(id, name, gradeLimit, value, weight) VALUES (3, 'Avaliação de AOCO', 1, 19, 0.2);
INSERT INTO GradeComponent(id, name, gradeLimit, value, weight) VALUES (4, 'Avaliação de FPRO', 1, 20, 0.2);
INSERT INTO GradeComponent(id, name, gradeLimit, value, weight) VALUES (5, 'Avaliação de MDIS', 1, 18, 0.2);

-------------------------------------------------

INSERT INTO GradeComponent(id, name, gradeLimit, value, weight) VALUES (6, 'Avaliação de CMAT', 1, 20, 0.2);
INSERT INTO GradeComponent(id, name, gradeLimit, value, weight) VALUES (7, 'Avaliação de FISI1', 1, 16, 0.2);
INSERT INTO GradeComponent(id, name, gradeLimit, value, weight) VALUES (8, 'Avaliação de MEST', 1, 18, 0.15);
INSERT INTO GradeComponent(id, name, gradeLimit, value, weight) VALUES (9, 'Avaliação de MPCP', 1, 20, 0.2);
INSERT INTO GradeComponent(id, name, gradeLimit, value, weight) VALUES (10, 'Avaliação de PROG', 1, 20, 0.25);

-------------------------------------------------

INSERT INTO GradeComponent(id, name, gradeLimit, weight) VALUES (11, 'Avaliação de AED', 1, 0.2);
INSERT INTO GradeComponent(id, name, gradeLimit, weight) VALUES (12, 'Avaliação de BD', 1, 0.2);
INSERT INTO GradeComponent(id, name, gradeLimit, weight) VALUES (13, 'Avaliação de F.II', 1, 0.2);
INSERT INTO GradeComponent(id, name, gradeLimit, weight) VALUES (14, 'Avaliação de LDTS', 1, 0.2);
INSERT INTO GradeComponent(id, name, gradeLimit, weight) VALUES (15, 'Avaliação de TC', 1, 0.2);
INSERT INTO GradeComponent(id, name, gradeLimit, value, weight) VALUES (100, 'Avaliação de FPRO', 1, 20, 0.2);

-------------------------------------------------

INSERT INTO GradeComponent VALUES (
    16,
    'MT1 ALGE',
    17.65,
    0.5,
    1,
    1
);

INSERT INTO GradeComponent VALUES (
    17,
    'MT2 ALGE',
    17,
    0.5,
    1,
    1
);

INSERT INTO GradeComponent VALUES (
    18,
    'MT1 AMAT',
    20,
    0.5,
    1,
    2
);

INSERT INTO GradeComponent VALUES (
    19,
    'MT2 AMAT',
    18.67,
    0.5,
    1,
    2
);

INSERT INTO GradeComponent VALUES (
    20,
    'MT1 AOCO',
    18.5,
    0.5,
    1,
    3
);

INSERT INTO GradeComponent VALUES (
    21,
    'MT2 AOCO',
    18.9,
    0.5,
    1,
    3
);

INSERT INTO GradeComponent VALUES (
    22,
    'Melhoria AOCO',
    17.6,
    0,
    1,
    3
);

INSERT INTO GradeComponent VALUES (
    23,
    'PEs FPRO',
    17,
    0.5,
    1,
    4
);

INSERT INTO GradeComponent VALUES (
    24,
    'PE1 FPRO',
    0,
    0,
    1,
    23
);

INSERT INTO GradeComponent VALUES (
    25,
    'PE2 FPRO',
    7.3,
    0.333,
    1,
    23
);

INSERT INTO GradeComponent VALUES (
    26,
    'PE3 FPRO',
    5.2,
    0.333,
    1,
    23
);

INSERT INTO GradeComponent VALUES (
    27,
    'PE4 FPRO',
    3.1,
    0.333,
    1,
    23
);

INSERT INTO GradeComponent VALUES (
    28,
    'AD FPRO (REs, LEs e PROJ)',
    20,
    0.2,
    1,
    4
);

INSERT INTO GradeComponent VALUES (
    29,
    'LEs FPRO',
    20,
    0,
    1,
    28
);

INSERT INTO GradeComponent VALUES (
    30,
    'REs FPRO',
    19.8,
    0,
    1,
    28
);

INSERT INTO GradeComponent VALUES (
    31,
    'PROJ FPRO',
    20,
    1,
    1,
    28
);

INSERT INTO GradeComponent VALUES (
    32,
    'TE1 FPRO',
    2.0,
    0.3,
    1,
    4
);

INSERT INTO GradeComponent VALUES (
    33,
    'MT1 MDIS',
    16.8,
    0.3125,
    1,
    5
);

INSERT INTO GradeComponent VALUES (
    34,
    'MT2 MDIS',
    20,
    0.3125,
    1,
    5
);

INSERT INTO GradeComponent VALUES (
    35,
    'MT3 MDIS',
    12.4,
    0.0625,
    1,
    5
);

INSERT INTO GradeComponent VALUES (
    36,
    'MT4 MDIS + KAHOOT',
    20,
    0.3125,
    1,
    5
);

-------------------------------------------------

INSERT INTO GradeComponent VALUES (
    37,
    'MT1 CMAT',
    19.3,
    0.5,
    1,
    6
);

INSERT INTO GradeComponent VALUES (
    38,
    'MT2 CMAT',
    19.5,
    0.5,
    1,
    6
);

INSERT INTO GradeComponent VALUES (
    39,
    'MT1 FIS1',
    11.3,
    0,
    1,
    7
);

INSERT INTO GradeComponent VALUES (
    40,
    'MT2 FIS1',
    9,
    0,
    1,
    7
);

INSERT INTO GradeComponent VALUES (
    41,
    'Exame FISI',
    14,
    0,
    1,
    7
);

INSERT INTO GradeComponent VALUES (
    42,
    'Melhoria FISI',
    16.3,
    1,
    1,
    7
);

INSERT INTO GradeComponent VALUES (
    43,
    'Projeto MEST',
    19.1,
    0.3,
    1,
    8
);

INSERT INTO GradeComponent VALUES (
    44,
    'Exame MEST',
    11.4,
    0.7,
    1,
    8
);

INSERT INTO GradeComponent VALUES (
    45,
    'AD MPCP',
    19.6,
    0.5,
    1,
    9
);

INSERT INTO GradeComponent VALUES (
    46,
    'Exercicios Assembly MPCP',
    20,
    0.4,
    1,
    45
);

INSERT INTO GradeComponent VALUES (
    47,
    'Assiduidade MPCP',
    1,
    0.2,
    2,
    45
);

INSERT INTO GradeComponent VALUES (
    48,
    'MT1 MPCP',
    19,
    0.4,
    1,
    45
);

INSERT INTO GradeComponent VALUES (
    49,
    'Exame MPCP',
    18,
    0,
    1,
    9
);

INSERT INTO GradeComponent VALUES (
    50,
    'Melhoria MPCP',
    19.6,
    0.5,
    1,
    9
);

INSERT INTO GradeComponent VALUES (
    51,
    'Projetos PROG',
    19,
    0.4,
    1,
    10
);

INSERT INTO GradeComponent VALUES (
    52,
    'Projeto PROG 1',
    19.1,
    0.5,
    1,
    51
);

INSERT INTO GradeComponent VALUES (
    53,
    'Projeto PROG 2',
    18.9,
    0.5,
    1,
    51
);

INSERT INTO GradeComponent VALUES (
    54,
    'Exame PROG',
    19.6,
    0,
    1,
    10
);

INSERT INTO GradeComponent VALUES (
    55,
    'Melhoria PROG',
    20,
    0.6,
    1,
    10
);

-------------------------------------------------

INSERT INTO GradeComponent VALUES (
    56,
    'Trabalhos de Grupo AED',
    NULL,
    0.4,
    1,
    11
);

INSERT INTO GradeComponent VALUES (
    57,
    'Trabalho 1 AED',
    NULL,
    0.5,
    1,
    56
);

INSERT INTO GradeComponent VALUES (
    58,
    'Trabalho 2 AED',
    NULL,
    0.5,
    1,
    56
);

INSERT INTO GradeComponent VALUES (
    59,
    'MTs Práticos AED',
    NULL,
    0.3,
    1,
    11
);

INSERT INTO GradeComponent VALUES (
    60,
    'MTP1 AED',
    NULL,
    0.5,
    1,
    59
);

INSERT INTO GradeComponent VALUES (
    61,
    'MTP2 AED',
    NULL,
    0.5,
    1,
    59
);

INSERT INTO GradeComponent VALUES (
    62,
    'MT Teóricos AED',
    NULL,
    0.3,
    1,
    11
);

INSERT INTO GradeComponent VALUES (
    63,
    'MTT1 AED',
    NULL,
    0.5,
    1,
    62
);

INSERT INTO GradeComponent VALUES (
    64,
    'MTT2 AED',
    NULL,
    0.5,
    1,
    62
);

INSERT INTO GradeComponent VALUES (
    65,
    'Projeto BD',
    NULL,
    0.35,
    1,
    12
);

INSERT INTO GradeComponent VALUES (
    66,
    'Entrega 1 BD',
    18.9,
    0.25,
    1,
    65
);

INSERT INTO GradeComponent VALUES (
    67,
    'Entrega 2 BD',
    NULL,
    0.25,
    1,
    65
);

INSERT INTO GradeComponent VALUES (
    68,
    'Entrega 3 BD',
    NULL,
    0.5,
    1,
    65
);

INSERT INTO GradeComponent VALUES (
    69,
    'Exame BD',
    NULL,
    0.65,
    1,
    12
);

INSERT INTO GradeComponent VALUES (
    70,
    'MT FIS2',
    NULL,
    0.4,
    1,
    13
);

INSERT INTO GradeComponent VALUES (
    71,
    'Exame FIS2',
    NULL,
    0.6,
    1,
    13
);

INSERT INTO GradeComponent VALUES (
    72,
    'Projeto LDTS',
    NULL,
    0.6,
    1,
    14
);

INSERT INTO GradeComponent VALUES (
    73,
    'Entrega 1 LDTS',
    NULL,
    0.1,
    1,
    72
);

INSERT INTO GradeComponent VALUES (
    74,
    'Entrega 2 LDTS',
    NULL,
    0.6,
    1,
    72
);

INSERT INTO GradeComponent VALUES (
    75,
    'Entrega 3 LDTS',
    NULL,
    0.3,
    1,
    72
);

INSERT INTO GradeComponent VALUES (
    76,
    'Participação LDTS',
    NULL,
    0.1,
    1,
    14
);

INSERT INTO GradeComponent VALUES (
    77,
    'Teste LDTS',
    NULL,
    0.3,
    1,
    14
);

INSERT INTO GradeComponent VALUES (
    78,
    'AD TC',
    NULL,
    0.25,
    1,
    15
);

INSERT INTO GradeComponent VALUES (
    79,
    'PAs TC',
    NULL,
    0.1,
    1,
    78
);

INSERT INTO GradeComponent VALUES (
    80,
    'AAs TC',
    NULL,
    0.6,
    1,
    78
);

INSERT INTO GradeComponent VALUES (
    81,
    'CAs TC',
    NULL,
    0.3,
    1,
    78
);

INSERT INTO GradeComponent VALUES (
    82,
    'Exame TC',
    NULL,
    0.75,
    1,
    15
);

INSERT INTO GradeComponent VALUES (
    83,
    'PEs FPRO',
    20,
    0.5,
    1,
    100
);

INSERT INTO GradeComponent VALUES (
    84,
    'PE1 FPRO',
    20,
    0.333,
    1,
    83
);

INSERT INTO GradeComponent VALUES (
    85,
    'PE2 FPRO',
    20,
    0.333,
    1,
    83
);

INSERT INTO GradeComponent VALUES (
    86,
    'PE3 FPRO',
    20,
    0.333,
    1,
    83
);

INSERT INTO GradeComponent VALUES (
    88,
    'AD FPRO (REs, LEs e PROJ)',
    20,
    0.2,
    1,
    100
);

INSERT INTO GradeComponent VALUES (
    89,
    'LEs FPRO',
    20,
    0,
    1,
    88
);

INSERT INTO GradeComponent VALUES (
    90,
    'REs FPRO',
    19.8,
    0,
    1,
    88
);

INSERT INTO GradeComponent VALUES (
    91,
    'PROJ FPRO',
    20,
    1,
    1,
    88
);

INSERT INTO GradeComponent VALUES (
    92,
    'TE1 FPRO',
    20,
    0.3,
    1,
    100
);

---------------------------------------------

INSERT INTO Subject VALUES (
    1, 
    'Álgebra', 
    'EF9F7C'
);

INSERT INTO Subject VALUES (
    2, 
    'Análise Matemática', 
    'D17CEF'
);

INSERT INTO Subject VALUES (
    3, 
    'Arquitectura e Organização de Computadores', 
    'E1ED74'
);

INSERT INTO Subject VALUES (
    4, 
    'Fundamentos da Programação', 
    '7CE8EF'
);

INSERT INTO Subject VALUES (
    5, 
    'Matemática Discreta', 
    '92ED74'
);

-------------------------------------------------

INSERT INTO Subject VALUES (
    6, 
    'Complementos de Matemática', 
    'EF9F7C'
);

INSERT INTO Subject VALUES (
    7, 
    'Física I', 
    '7CEFBD'
);

INSERT INTO Subject VALUES (
    8, 
    'Métodos Estatísticos', 
    '92ED74'
);

INSERT INTO Subject VALUES (
    9, 
    'Microprocessadores e Computadores Pessoais', 
    'E1ED74'
);

INSERT INTO Subject VALUES (
    10, 
    'Programação', 
    '7CE8EF' 
);

-------------------------------------------------

INSERT INTO Subject VALUES (
    11, 
    'Algoritmos e Estruturas de Dados', 
    'E1ED74' 
);

INSERT INTO Subject VALUES (
    12, 
    'Bases de Dados', 
    '92ED74' 
);

INSERT INTO Subject VALUES (
    13, 
    'Física 2', 
    'D17CEF'
);

INSERT INTO Subject VALUES (
    14, 
    'Laboratório de Desenho e Teste de Software', 
    'EF9F7C' 
);

INSERT INTO Subject VALUES (
    15, 
    'Teoria da Computação', 
    '7CE8EF' 
);

-- Term Grades

INSERT INTO TermGrades VALUES(
    1,
    1,
    1
);

INSERT INTO TermGrades VALUES(
    1,
    2,
    2
);

INSERT INTO TermGrades VALUES(
    1,
    3,
    3
);

INSERT INTO TermGrades VALUES(
    1,
    4,
    4
);

INSERT INTO TermGrades VALUES(
    1,
    5,
    5
);

INSERT INTO TermGrades VALUES(
    2,
    6,
    6
);

INSERT INTO TermGrades VALUES(
    2,
    7,
    7
);

INSERT INTO TermGrades VALUES(
    2,
    8,
    8
);

INSERT INTO TermGrades VALUES(
    2,
    9,
    9
);

INSERT INTO TermGrades VALUES(
    2,
    10,
    10
);

INSERT INTO TermGrades VALUES(
    3,
    11,
    11
);

INSERT INTO TermGrades VALUES(
    3,
    12,
    12
);

INSERT INTO TermGrades VALUES(
    3,
    13,
    13
);

INSERT INTO TermGrades VALUES(
    3,
    14,
    14
);

INSERT INTO TermGrades VALUES(
    3,
    15,
    15
);

INSERT INTO TermGrades VALUES(
    3,
    4,
    100
);

-- Classrooms

INSERT INTO Classroom VALUES (1, "EaD", 1);
INSERT INTO Classroom VALUES (2, "B005", 1);
INSERT INTO Classroom VALUES (3, "B011", 1);
INSERT INTO Classroom VALUES (4, "B013", 1);
INSERT INTO Classroom VALUES (5, "B014", 1);
INSERT INTO Classroom VALUES (6, "B017", 1);
INSERT INTO Classroom VALUES (7, "B103", 1);
INSERT INTO Classroom VALUES (8, "B110", 1);
INSERT INTO Classroom VALUES (9, "B201", 1);
INSERT INTO Classroom VALUES (10, "B208", 1);
INSERT INTO Classroom VALUES (11, "B213", 1);
INSERT INTO Classroom VALUES (12, "B304", 1);
INSERT INTO Classroom VALUES (13, "B308", 1);
INSERT INTO Classroom VALUES (14, "B323", 1);

---------------------------------------------

INSERT INTO EvaluationEvent VALUES (
    1,
    '2020-12-12 08:30:00',
    '2020-12-12 10:00:00',
    1,
    7,
    3,
    16
);

INSERT INTO EvaluationEvent VALUES (
    2,
    '2021-02-01 08:30:00',
    '2021-02-01 10:00:00',
    1,
    14,
    3,
    17
);

INSERT INTO EvaluationEvent VALUES (
    3,
    '2020-12-09 08:30:00',
    '2020-12-09 10:00:00',
    2,
    7,
    3,
    18
);

INSERT INTO EvaluationEvent VALUES (
    4,
    '2021-01-27 08:30:00',
    '2021-01-27 10:00:00',
    2,
    12,
    3,
    19 
);

INSERT INTO EvaluationEvent VALUES (
    5,
    '2020-12-05 08:30:00',
    '2020-12-05 10:00:00',
    3,
    11,
    3,
    20 
);

INSERT INTO EvaluationEvent VALUES (
    6,
    '2021-01-23 10:00:00',
    '2021-01-23 12:30:00',
    3,
    2,
    3,
    21
);

INSERT INTO EvaluationEvent VALUES (
    7,
    '2021-09-13 14:30:00',
    '2021-09-13 16:00:00',
    3,
    7,
    3,
    22
);

INSERT INTO EvaluationEvent VALUES (
    8,
    '2020-11-07 08:30:00',
    '2020-11-07 10:00:00',
    4,
    12,
    3,
    24
);

INSERT INTO EvaluationEvent VALUES (
    9,
    '2020-12-02 08:30:00',
    '2020-12-02 10:00:00',
    4,
    7,
    3,
    25
);

INSERT INTO EvaluationEvent VALUES (
    10,
    '2021-01-09 08:30:00',
    '2021-01-09 10:00:00',
    4,
    7,
    3,
    26
);

INSERT INTO EvaluationEvent VALUES (
    11,
    '2021-01-29 08:30:00',
    '2021-01-29 10:00:00',
    4,
    7,
    3,
    27
);

INSERT INTO EvaluationEvent VALUES (
    12,
    '2020-10-12 13:20:00',
    '2021-01-21 12:00:00',
    4,
    1,
    3,
    29
);

INSERT INTO EvaluationEvent VALUES (
    13,
    '2020-10-19 08:00:00',
    '2021-01-25 08:00:00',
    4,
    NULL,
    2,
    30
);

INSERT INTO EvaluationEvent VALUES (
    14,
    '2020-12-04 00:00:00',
    '2021-01-25 23:59:59',
    4,
    NULL,
    2,
    31
);

INSERT INTO EvaluationEvent VALUES (
    15,
    '2021-02-03 08:30:00',
    '2021-02-03 10:00:00',
    4,
    13,
    3,
    32
);

INSERT INTO EvaluationEvent VALUES (
    16,
    '2020-10-31 11:30:00',
    '2020-10-31 13:00:00',
    5,
    14,
    3,
    33
);

INSERT INTO EvaluationEvent VALUES (
    17,
    '2020-11-28 11:30:00',
    '2020-11-28 13:00:00',
    5,
    7,
    3,
    34
);

INSERT INTO EvaluationEvent VALUES (
    18,
    '2020-12-19 09:00:00',
    '2020-12-19 10:30:00',
    5,
    7,
    3,
    35
);

INSERT INTO EvaluationEvent VALUES (
    19,
    '2021-01-25 08:30:00',
    '2021-01-25 10:00:00',
    5,
    10,
    3,
    36
);

---------------------------------------------


INSERT INTO EvaluationEvent VALUES (
    20,
    '2021-04-24 09:00:00',
    '2021-04-24 10:30:00',
    6,
    4,
    3,
    37
);

INSERT INTO EvaluationEvent VALUES (
    21,
    '2021-06-07 09:00:00',
    '2021-06-07 10:30:00',
    6,
    7,
    3,
    38
);

INSERT INTO EvaluationEvent VALUES (
    22,
    '2021-04-11 08:30:00',
    '2021-04-11 10:00:00',
    7,
    4,
    3,
    39
);

INSERT INTO EvaluationEvent VALUES (
    23,
    '2021-06-10 08:30:00',
    '2021-06-10 10:00:00',
    7,
    12,
    3,
    40
);

INSERT INTO EvaluationEvent VALUES (
    24,
    '2021-06-21 08:30:00',
    '2021-06-21 10:00:00',
    7,
    10,
    3,
    41
);

INSERT INTO EvaluationEvent VALUES (
    25,
    '2021-07-21 13:30:00',
    '2021-07-21 15:00:00',
    7,
    7,
    3,
    42
);

INSERT INTO EvaluationEvent VALUES (
    26,
    '2021-03-02 00:00:00',
    '2021-03-16 23:59:59',
    8,
    NULL,
    2,
    43
);

INSERT INTO EvaluationEvent VALUES (
    27,
    '2021-06-12 11:00:00',
    '2021-06-12 12:30:00',
    8,
    6,
    2,
    44
);

INSERT INTO EvaluationEvent VALUES (
    28,
    '2021-04-28 00:00:00',
    '2021-06-10 23:59:59',
    9,
    NULL,
    2,
    46
);

INSERT INTO EvaluationEvent VALUES (
    29,
    '2021-05-15 08:30:00',
    '2021-05-15 10:00:00',
    9,
    10,
    3,
    48
);

INSERT INTO EvaluationEvent VALUES (
    30,
    '2021-06-15 08:30:00',
    '2021-06-15 10:00:00',
    9,
    7,
    3,
    49
);

INSERT INTO EvaluationEvent VALUES (
    31,
    '2021-07-03 14:30:00',
    '2021-07-03 16:00:00',
    9,
    10,
    3,
    50
);

INSERT INTO EvaluationEvent VALUES (
    32,
    '2021-03-30 00:00:00',
    '2021-05-01 23:59:59',
    10,
    NULL,
    2,
    52
);

INSERT INTO EvaluationEvent VALUES (
    33,
    '2021-05-09 00:00:00',
    '2021-05-28 23:59:59',
    10,
    NULL,
    2,
    53
);

INSERT INTO EvaluationEvent VALUES (
    34,
    '2021-06-19 14:30:00',
    '2021-06-19 16:00:00',
    10,
    10,
    2,
    54
);

INSERT INTO EvaluationEvent VALUES (
    35,
    '2021-07-06 09:30:00',
    '2021-07-06 11:00:00',
    10,
    11,
    2,
    55
);

---------------------------------------------

INSERT INTO EvaluationEvent VALUES (
    36,
    '2021-11-15 00:00:00',
    '2021-12-17 23:55:00',
    11,
    NULL,
    2,
    57
);

INSERT INTO EvaluationEvent VALUES (
    37,
    '2021-12-11 13:30:00',
    '2021-12-11 14:00:00',
    11,
    11,
    2,
    63
);

INSERT INTO EvaluationEvent VALUES (
    38,
    '2021-12-11 14:00:00',
    '2021-12-11 15:30:00',
    11,
    11,
    3,
    60
);

INSERT INTO EvaluationEvent VALUES (
    39,
    '2022-01-25 16:00:00',
    '2022-01-25 16:30:00',
    11,
    12,
    3,
    64
);

INSERT INTO EvaluationEvent VALUES (
    40,
    '2022-01-25 16:30:00',
    '2022-01-25 18:00:00',
    11,
    12,
    2,
    61
);

INSERT INTO EvaluationEvent VALUES (
    41,
    '2021-11-08 00:00:00',
    '2021-11-22 23:55:00',
    12,
    NULL,
    2,
    66
);


INSERT INTO EvaluationEvent VALUES (
    42,
    '2021-11-23 00:00:00',
    '2021-12-12 23:55:00',
    12,
    NULL,
    2,
    67
);

INSERT INTO EvaluationEvent VALUES (
    43,
    '2021-12-13 00:00:00',
    '2022-01-30 23:55:00',
    12,
    NULL,
    2,
    68
);

INSERT INTO EvaluationEvent VALUES (
    44,
    '2022-01-08 13:30:00',
    '2022-01-08 15:35:00',
    13,
    12,
    3,
    70
);

INSERT INTO EvaluationEvent VALUES (
    45,
    '2021-12-07 10:00:00',
    '2022-01-08 23:55:00',
    14,
    NULL,
    2,
    73
);

INSERT INTO EvaluationEvent VALUES (
    46,
    '2022-01-09 00:00:00',
    '2022-01-22 23:55:00',
    14,
    NULL,
    2,
    74
);

INSERT INTO EvaluationEvent VALUES (
    47,
    '2022-01-23 00:00:00',
    '2022-01-29 23:55:00',
    14,
    NULL,
    2,
    75
);

INSERT INTO EvaluationEvent VALUES (
    48,
    '2021-10-18 00:00:00',
    '2022-03-11 23:59:59',
    15,
    NULL,
    3,
    79
);

INSERT INTO EvaluationEvent VALUES (
    49,
    '2021-10-18 00:00:00',
    '2022-03-11 23:59:59',
    15,
    NULL,
    3,
    80
);

INSERT INTO EvaluationEvent VALUES (
    50,
    '2021-10-18 00:00:00',
    '2022-03-11 23:59:59',
    15,
    NULL,
    3,
    81
);



INSERT INTO EvaluationEvent VALUES (
    51,
    '2021-11-07 08:30:00',
    '2021-11-07 10:00:00',
    4,
    12,
    3,
    84
);

INSERT INTO EvaluationEvent VALUES (
    52,
    '2021-12-02 08:30:00',
    '2021-12-02 10:00:00',
    4,
    7,
    3,
    85
);

INSERT INTO EvaluationEvent VALUES (
    53,
    '2022-01-09 08:30:00',
    '2022-01-09 10:00:00',
    4,
    7,
    3,
    86
);

INSERT INTO EvaluationEvent VALUES (
    54,
    '2021-10-12 13:20:00',
    '2022-01-21 12:00:00',
    4,
    1,
    3,
    89
);

INSERT INTO EvaluationEvent VALUES (
    55,
    '2021-10-19 08:00:00',
    '2022-01-25 08:00:00',
    4,
    NULL,
    2,
    90
);

INSERT INTO EvaluationEvent VALUES (
    56,
    '2021-12-04 00:00:00',
    '2022-01-25 23:59:59',
    4,
    NULL,
    2,
    91
);

INSERT INTO EvaluationEvent VALUES (
    57,
    '2022-02-03 08:30:00',
    '2022-02-03 10:00:00',
    4,
    13,
    3,
    92
);





INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    1,
    '09:00:00',
    '10:30:00',
    'monday',
    3,
    1,
    1
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    2,
    '10:30:00',
    '12:00:00',
    'monday',
    5,
    1,
    1
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    3,
    '12:00:00',
    '13:30:00',
    'monday',
    4,
    1,
    1
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    4,
    '08:30:00',
    '10:30:00',
    'tuesday',
    1,
    1,
    4
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    5,
    '10:30:00',
    '12:30:00',
    'tuesday',
    4,
    1,
    10
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    6,
    '14:00:00',
    '16:00:00',
    'tuesday',
    3,
    1,
    3
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    7,
    '08:30:00',
    '10:00:00',
    'wednesday',
    5,
    1,
    1
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    8,
    '10:00:00',
    '11:30:00',
    'wednesday',
    2,
    1,
    1
);

INSERT INTO Period(id, startTime, endTime, weekday, subject,term, classroom) VALUES (
    9,
    '11:30:00',
    '13:30:00',
    'wednesday',
    1,
    1,
    1
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    10,
    '09:00:00',
    '10:30:00',
    'thursday',
    2,
    1,
    1
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    11,
    '10:30:00',
    '12:00:00',
    'thursday',
    4,
    1,
    1
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    12,
    '12:00:00',
    '13:30:00',
    'thursday',
    3,
    1,
    1
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    13,
    '09:00:00',
    '11:00:00',
    'friday',
    5,
    1,
    2
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    14,
    '11:00:00',
    '13:00:00',
    'friday',
    2,
    1,
    2
);

-------------------------------------------------

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    15,
    '09:00:00',
    '10:00:00',
    'monday',
    6,
    2,
    1
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    16,
    '10:00:00',
    '11:00:00',
    'monday',
    7,
    2,
    1
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    17,
    '11:00:00',
    '12:30:00',
    'monday',
    10,
    2,
    1
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    18,
    '09:00:00',
    '11:00:00',
    'tuesday',
    7,
    2,
    5
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    19,
    '11:00:00',
    '13:00:00',
    'tuesday',
    6,
    2,
    5
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    20,
    '09:00:00',
    '10:00:00',
    'wednesday',
    7,
    2,
    1
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    21,
    '10:00:00',
    '11:00:00',
    'wednesday',
    6,
    2,
    1
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    22,
    '11:00:00',
    '13:00:00',
    'wednesday',
    8,
    2,
    1
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    23,
    '17:30:00',
    '19:30:00',
    'wednesday',
    10,
    2,
    9
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    24,
    '09:00:00',
    '10:30:00',
    'thursday',
    10,
    2,    
    1
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    25,
    '10:30:00',
    '12:30:00', 
    'thursday',  
    9,
    2,
    1
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    26,
    '13:30:00',
    '15:30:00', 
    'friday',  
    9,
    2,
    9
); 

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    27,
    '15:30:00',
    '17:30:00',
    'friday', 
    8,
    2,
    6
);

-------------------------------------------------

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    28,
    '14:00:00',
    '15:00:00',
    'monday',
    11,
    3,
    1
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom, note) VALUES (
    29,
    '15:00:00',
    '16:00:00',
    'monday',
    12,
    3,
    1,
    'https://videoconf-colibri.zoom.us/j/87348858347'
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    30,
    '16:00:00',
    '17:30:00',
    'monday',
    13,
    3,
    1
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    31,
    '14:00:00',
    '16:00:00',
    'tuesday',
    15,
    3,
    8
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    32,
    '16:00:00',
    '18:00:00',
    'tuesday',
    14,
    3,
    12
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    33,
    '09:00:00',
    '11:00:00',
    'wednesday',
    11,
    3,
    13
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    34,
    '11:00:00',
    '12:30:00',
    'wednesday',
    13,
    3,
    14
); 
  
INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    35,
    '14:00:00',
    '16:00:00',
    'thursday',
    14,
    3,
    1
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    36,
    '16:00:00',
    '18:00:00',
    'thursday',
    15,
    3,
    1
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    37,
    '18:00:00',
    '19:00:00',
    'thursday',
    11,
    3,
    1
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom, note) VALUES (
    38,
    '19:00:00',
    '20:00:00',
    'thursday',
    12,
    3,
    1,
    'https://videoconf-colibri.zoom.us/j/81363366128'
);

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (
    39,
    '14:00:00',
    '16:00:00',
    'friday',
    12,
    3,
    7
);

-- Tasks

INSERT INTO Task(id, name, done, subject) VALUES (
    1,
    'Ver aulas de AOCO',
    1,
    3
);

INSERT INTO Task VALUES (
    2,
    'Fazer projeto de PROG',
    'Implementar leitura de ficheiros e dar commit',
    1,
    10
);

INSERT INTO Task VALUES (
    3,
    'Estudar AED',
    'Ver slides sobre algoritmos de Sorting',
    0,
    11
);

INSERT INTO Task VALUES (
    4,
    'Fazer projeto de BD',
    'Acabar 1ª entrega do trabalho',
    1,
    12
);

INSERT INTO Task VALUES (
    5,
    'Fazer projeto de BD',
    'Acabar relatório e povoamento da base de dados',
    0,
    12
);

-- Lecturers

INSERT INTO Lecturer VALUES (
    1,
    5
);

INSERT INTO Lecturer VALUES (
    2,
    8
);

INSERT INTO Lecturer VALUES (
    3,
    7
);

INSERT INTO Lecturer VALUES (
    4,
    1
);

INSERT INTO Lecturer VALUES (
    5,
    6
);

INSERT INTO Lecturer VALUES (
    6,
    4
);
INSERT INTO Lecturer VALUES (
    7,
    8
);

INSERT INTO Lecturer VALUES (
    8,
    2
);

INSERT INTO Lecturer VALUES (
    9,
    1
);

INSERT INTO Lecturer VALUES (
    10,
    2
);

INSERT INTO Lecturer VALUES (
    11,
    7
);

INSERT INTO Lecturer VALUES (
    12,
    5
);

INSERT INTO Lecturer VALUES (
    13,
    9
);

INSERT INTO Lecturer VALUES (
    14,
    3
);

-------------------------------------------------

INSERT INTO Lecturer VALUES (
    15,
    11
);


INSERT INTO Lecturer VALUES (
    16,
    12
);


INSERT INTO Lecturer VALUES (
    17,
    18
);


INSERT INTO Lecturer VALUES (
    18,
    13
);


INSERT INTO Lecturer VALUES (
    19,
    10
);


INSERT INTO Lecturer VALUES (
    20,
    12
);

INSERT INTO Lecturer VALUES (
    21,
    11
);


INSERT INTO Lecturer VALUES (
    22,
    14
);


INSERT INTO Lecturer VALUES (
    22,
    15
);


INSERT INTO Lecturer VALUES (
    23,
    17
);

INSERT INTO Lecturer VALUES (
    24,
    18
);


INSERT INTO Lecturer VALUES (
    25,
    5
);


INSERT INTO Lecturer VALUES (
    26,
    5
);


INSERT INTO Lecturer VALUES (
    27,
    16
);

-------------------------------------------------

INSERT INTO Lecturer VALUES (
    28,
    19
);


INSERT INTO Lecturer VALUES (
    28,
    20
);

INSERT INTO Lecturer VALUES (
    29,
    21
);

INSERT INTO Lecturer VALUES (
    29,
    22
);

INSERT INTO Lecturer VALUES (
    30,
    12
);

INSERT INTO Lecturer VALUES (
    31,
    25
);

INSERT INTO Lecturer VALUES (
    32,
    23
);

INSERT INTO Lecturer VALUES (
    33,
    19
);

INSERT INTO Lecturer VALUES (
    34,
    12
);

INSERT INTO Lecturer VALUES (
    35,
    24
);

INSERT INTO Lecturer VALUES (
    36,
    26
);

INSERT INTO Lecturer VALUES (
    37,
    19
);

INSERT INTO Lecturer VALUES (
    37,
    20
);

INSERT INTO Lecturer VALUES (
    38,
    21
);

INSERT INTO Lecturer VALUES (
    38,
    22
);

INSERT INTO Lecturer VALUES (
    39,
    21
);

-- Professor photos

UPDATE Professor SET photo = 'antonio_ferreira.jpg' WHERE id = 1;
UPDATE Professor SET photo = 'alexandre_afonso.jpg' WHERE id = 2;
UPDATE Professor SET photo = 'luis_ferras.jpg' WHERE id = 3;
UPDATE Professor SET photo = 'antonio_araujo.jpg' WHERE id = 4;
UPDATE Professor SET photo = 'joao_ferreira.jpg' WHERE id = 5;
UPDATE Professor SET photo = 'afonso_sousa.jpg' WHERE id = 6;
UPDATE Professor SET photo = 'joao_lopes.jpg' WHERE id = 7;
UPDATE Professor SET photo = 'gabriel_david.jpg' WHERE id = 8;
UPDATE Professor SET photo = 'renato_soeiro.jpg' WHERE id = 9;
UPDATE Professor SET photo = 'ana_neves.jpg' WHERE id = 10;
UPDATE Professor SET photo = 'jose_barbosa.jpg' WHERE id = 11;
UPDATE Professor SET photo = 'jaime_villate.jpg' WHERE id = 12;
UPDATE Professor SET photo = 'mercedes_filho.jpg' WHERE id = 13;
UPDATE Professor SET photo = 'antonio_gomes.jpg' WHERE id = 14;
UPDATE Professor SET photo = 'joao_moreira.jpg' WHERE id = 15;
UPDATE Professor SET photo = 'joao_fernandes.jpg' WHERE id = 17;
UPDATE Professor SET photo = 'ana_rocha.jpg' WHERE id = 19;
UPDATE Professor SET photo = 'pedro_ribeiro.jpg' WHERE id = 20;
UPDATE Professor SET photo = 'carla_lopes.jpg' WHERE id = 21;
UPDATE Professor SET photo = 'michel_ferreira.jpg' WHERE id = 22;
UPDATE Professor SET photo = 'andre_restivo.jpg' WHERE id = 23;
UPDATE Professor SET photo = 'rui_abreu.jpg' WHERE id = 24;
UPDATE Professor SET photo = 'joao_bispo.jpg' WHERE id = 25;
UPDATE Professor SET photo = 'joao_cardoso.jpg' WHERE id = 26;