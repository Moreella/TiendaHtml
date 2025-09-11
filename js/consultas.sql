------------------------------------------------------------
-- DEPARTAMENTO (20)
------------------------------------------------------------
INSERT INTO Departamento (id_departamento, nombre) VALUES (1,  'Facultad de Ingeniería');
INSERT INTO Departamento (id_departamento, nombre) VALUES (2,  'Facultad de Ciencias Sociales');
INSERT INTO Departamento (id_departamento, nombre) VALUES (3,  'Facultad de Ciencias de la Salud');
INSERT INTO Departamento (id_departamento, nombre) VALUES (4,  'Facultad de Economía y Negocios');
INSERT INTO Departamento (id_departamento, nombre) VALUES (5,  'Facultad de Educación');
INSERT INTO Departamento (id_departamento, nombre) VALUES (6,  'Facultad de Arquitectura y Diseño');
INSERT INTO Departamento (id_departamento, nombre) VALUES (7,  'Facultad de Ciencias Naturales');
INSERT INTO Departamento (id_departamento, nombre) VALUES (8,  'Facultad de Derecho');
INSERT INTO Departamento (id_departamento, nombre) VALUES (9,  'Facultad de Humanidades');
INSERT INTO Departamento (id_departamento, nombre) VALUES (10, 'Facultad de Agronomía');
INSERT INTO Departamento (id_departamento, nombre) VALUES (11, 'Facultad de Química');
INSERT INTO Departamento (id_departamento, nombre) VALUES (12, 'Facultad de Física');
INSERT INTO Departamento (id_departamento, nombre) VALUES (13, 'Facultad de Matemáticas');
INSERT INTO Departamento (id_departamento, nombre) VALUES (14, 'Facultad de Enfermería');
INSERT INTO Departamento (id_departamento, nombre) VALUES (15, 'Facultad de Kinesiología');
INSERT INTO Departamento (id_departamento, nombre) VALUES (16, 'Facultad de Periodismo');
INSERT INTO Departamento (id_departamento, nombre) VALUES (17, 'Facultad de Música');
INSERT INTO Departamento (id_departamento, nombre) VALUES (18, 'Facultad de Historia');
INSERT INTO Departamento (id_departamento, nombre) VALUES (19, 'Facultad de Geografía');
INSERT INTO Departamento (id_departamento, nombre) VALUES (20, 'Facultad de Computación');

------------------------------------------------------------
-- CARRERA (20)  IDs: 301..320
------------------------------------------------------------
INSERT INTO Carrera VALUES (301, 'Ingeniería Civil Informática', 1);
INSERT INTO Carrera VALUES (302, 'Psicología', 2);
INSERT INTO Carrera VALUES (303, 'Medicina', 3);
INSERT INTO Carrera VALUES (304, 'Ingeniería Comercial', 4);
INSERT INTO Carrera VALUES (305, 'Pedagogía en Historia', 5);
INSERT INTO Carrera VALUES (306, 'Arquitectura', 6);
INSERT INTO Carrera VALUES (307, 'Biología', 7);
INSERT INTO Carrera VALUES (308, 'Derecho', 8);
INSERT INTO Carrera VALUES (309, 'Filosofía', 9);
INSERT INTO Carrera VALUES (310, 'Agronomía', 10);
INSERT INTO Carrera VALUES (311, 'Química', 11);
INSERT INTO Carrera VALUES (312, 'Física', 12);
INSERT INTO Carrera VALUES (313, 'Matemática', 13);
INSERT INTO Carrera VALUES (314, 'Enfermería', 14);
INSERT INTO Carrera VALUES (315, 'Kinesiología', 15);
INSERT INTO Carrera VALUES (316, 'Periodismo', 16);
INSERT INTO Carrera VALUES (317, 'Música', 17);
INSERT INTO Carrera VALUES (318, 'Geografía', 19);
INSERT INTO Carrera VALUES (319, 'Historia', 18);
INSERT INTO Carrera VALUES (320, 'Ciencia de Datos', 20);

------------------------------------------------------------
-- ASIGNATURA (20)  IDs: 4001..4020
-- (creditos 1..12, nivel 1..12, códigos ≤8 chars)
------------------------------------------------------------
INSERT INTO Asignatura VALUES (4001,  'INF101', 'Programación I',              6, 1, 301);
INSERT INTO Asignatura VALUES (4002,  'INF202', 'Estructuras de Datos',        6, 2, 301);
INSERT INTO Asignatura VALUES (4003,  'INF303', 'Bases de Datos',              7, 3, 301);
INSERT INTO Asignatura VALUES (4004,  'INF404', 'Sistemas Operativos',         6, 4, 301);
INSERT INTO Asignatura VALUES (4005,  'INF405', 'Ingeniería de Software',      8, 5, 301);

INSERT INTO Asignatura VALUES (4006,  'PSI101', 'Psicología General',          5, 1, 302);
INSERT INTO Asignatura VALUES (4007,  'PSI202', 'Psicología Social',           6, 2, 302);

INSERT INTO Asignatura VALUES (4008,  'MED101', 'Anatomía Humana',             8, 1, 303);
INSERT INTO Asignatura VALUES (4009,  'MED202', 'Fisiología',                  7, 2, 303);

INSERT INTO Asignatura VALUES (4010, 'ADM101', 'Contabilidad I',               5, 1, 304);
INSERT INTO Asignatura VALUES (4011, 'ADM202', 'Microeconomía',                6, 2, 304);

INSERT INTO Asignatura VALUES (4012, 'HIS101', 'Historia Universal I',         5, 1, 305);
INSERT INTO Asignatura VALUES (4013, 'ARQ101', 'Taller de Arquitectura I',     8, 1, 306);
INSERT INTO Asignatura VALUES (4014, 'BIO101', 'Biología Celular',             6, 1, 307);
INSERT INTO Asignatura VALUES (4015, 'DER101', 'Introducción al Derecho',      5, 1, 308);
INSERT INTO Asignatura VALUES (4016, 'FIL101', 'Introducción a la Filosofía',  4, 1, 309);
INSERT INTO Asignatura VALUES (4017, 'AGRO10', 'Edafología',                   6, 2, 310);
INSERT INTO Asignatura VALUES (4018, 'QUI101', 'Química General',              6, 1, 311);
INSERT INTO Asignatura VALUES (4019, 'FIS101', 'Física I',                     6, 1, 312);
INSERT INTO Asignatura VALUES (4020, 'MAT101', 'Cálculo I',                    6, 1, 313);

------------------------------------------------------------
-- DOCENTE (20)  IDs: 10001..10020 (RUT únicos, dv 1 char)
------------------------------------------------------------
INSERT INTO Docente VALUES (10001, 12345678, '9', 'María',     'Josefa',  'Torres',    'González', 'Bases de Datos',        'maria.torres@udm.cl');
INSERT INTO Docente VALUES (10002, 11223344, '5', 'Carlos',    'Andrés',  'Fernández', 'López',     'Matemáticas',          'carlos.fernandez@udm.cl');
INSERT INTO Docente VALUES (10003, 99887766, 'K', 'Ana',       'Belén',   'González',  'Rivas',     'Psicología Clínica',   'ana.gonzalez@udm.cl');
INSERT INTO Docente VALUES (10004, 22334455, '1', 'Luis',      'Enrique', 'Ramírez',   'Soto',      'Contabilidad',         'luis.ramirez@udm.cl');
INSERT INTO Docente VALUES (10005, 33445566, '2', 'Claudia',   'Elena',   'Soto',      'Pérez',     'Fisiología',           'claudia.soto@udm.cl');
INSERT INTO Docente VALUES (10006, 44556677, '3', 'Felipe',    'Ignacio', 'Álvarez',   'Muñoz',     'Programación',         'felipe.alvarez@udm.cl');
INSERT INTO Docente VALUES (10007, 55667788, '4', 'Isabel',    'Antonia', 'Contreras', 'Díaz',      'Arquitectura',         'isabel.contreras@udm.cl');
INSERT INTO Docente VALUES (10008, 66778899, '5', 'Cecilia',   'Andrea',  'Vargas',    'Bravo',     'Biología',             'cecilia.vargas@udm.cl');
INSERT INTO Docente VALUES (10009, 77889900, '6', 'Pedro',     'Tomás',   'Reyes',     'Castillo',  'Historia',             'pedro.reyes@udm.cl');
INSERT INTO Docente VALUES (10010, 88990011, '7', 'Verónica',  'Soledad', 'Castro',    'Cifuentes', 'Psicología Org.',      'veronica.castro@udm.cl');
INSERT INTO Docente VALUES (10011, 90112233, '8', 'Andrés',    'Eduardo', 'Orellana',  'Silva',     'Microeconomía',        'andres.orellana@udm.cl');
INSERT INTO Docente VALUES (10012, 12121212, '9', 'Patricia',  'Elisa',   'López',     'Garrido',   'Derecho Penal',        'patricia.lopez@udm.cl');
INSERT INTO Docente VALUES (10013, 13131313, '0', 'Francisco', 'Javier',  'Díaz',      'Hermosilla', 'Anatomía',            'francisco.diaz@udm.cl');
INSERT INTO Docente VALUES (10014, 14141414, '1', 'Beatriz',   'Teresa',  'Herrera',   'Alarcón',   'Literatura',           'beatriz.herrera@udm.cl');
INSERT INTO Docente VALUES (10015, 15151515, '2', 'Gonzalo',   'Esteban', 'Pérez',     'Cantillana','Prog. Avanzada',      'gonzalo.perez@udm.cl');
INSERT INTO Docente VALUES (10016, 16161616, '3', 'Natalia',   'Belén',   'Cifuentes', 'Rojas',     'Psicología Educ.',     'natalia.cifuentes@udm.cl');
INSERT INTO Docente VALUES (10017, 17171717, '4', 'Eduardo',   'Arturo',  'Fuentes',   'Pradenas',  'Ética Profesional',    'eduardo.fuentes@udm.cl');
INSERT INTO Docente VALUES (10018, 18181818, '5', 'Constanza', 'Andrea',  'Bravo',     'Moreno',    'Contabilidad II',      'constanza.bravo@udm.cl');
INSERT INTO Docente VALUES (10019, 19191919, '6', 'Miguel',    'Ángel',   'Castro',    'Lagos',     'Bases de Datos II',    'miguel.castro@udm.cl');
INSERT INTO Docente VALUES (10020, 20202020, '7', 'Camila',    'Andrea',  'Vega',      'Pino',      'Álgebra Lineal',       'camila.vega@udm.cl');

------------------------------------------------------------
-- ESTUDIANTE (20)  IDs: 111,222,..., 111*20=2220
------------------------------------------------------------
INSERT INTO Estudiante VALUES (111,  20123456, '7', 'Javier',    'Andrés',   'Muñoz',    'Pérez',     2022, 'javier.munoz@alumnos.udm.cl');
INSERT INTO Estudiante VALUES (222,  21987654, '3', 'Camila',    'Andrea',   'Rojas',    'López',     2023, 'camila.rojas@alumnos.udm.cl');
INSERT INTO Estudiante VALUES (333,  19456789, '1', 'Matías',    'Antonio',  'Silva',    'Torres',    2021, 'matias.silva@alumnos.udm.cl');
INSERT INTO Estudiante VALUES (444,  22345678, '2', 'Valentina', 'Ignacia',  'Herrera',  'Castro',    2023, 'valentina.herrera@alumnos.udm.cl');
INSERT INTO Estudiante VALUES (555,  18234567, '4', 'Felipe',    'Antonio',  'Castro',   'Morales',   2020, 'felipe.castro@alumnos.udm.cl');
INSERT INTO Estudiante VALUES (666,  17987654, '9', 'Constanza', 'Belén',    'Reyes',    'Sanhueza',  2019, 'constanza.reyes@alumnos.udm.cl');
INSERT INTO Estudiante VALUES (777,  16345678, '5', 'Diego',     'Ignacio',  'Morales',  'Fuentes',   2018, 'diego.morales@alumnos.udm.cl');
INSERT INTO Estudiante VALUES (888,  23123456, '1', 'Sofía',     'Alejandra','López',    'Campos',    2023, 'sofia.lopez@alumnos.udm.cl');
INSERT INTO Estudiante VALUES (999,  15876543, '2', 'Ignacio',   'Tomás',    'Pérez',    'Soto',      2017, 'ignacio.perez@alumnos.udm.cl');
INSERT INTO Estudiante VALUES (1110, 19765432, '3', 'Francisca', 'Soledad',  'Díaz',     'Castillo',  2021, 'francisca.diaz@alumnos.udm.cl');
INSERT INTO Estudiante VALUES (1221, 18555666, '7', 'Tomás',     'Eduardo',  'Castillo', 'Navarrete', 2020, 'tomas.castillo@alumnos.udm.cl');
INSERT INTO Estudiante VALUES (1332, 21111222, '3', 'Paula',     'Elisa',    'Fernández','Garrido',   2023, 'paula.fernandez@alumnos.udm.cl');
INSERT INTO Estudiante VALUES (1443, 22222333, '4', 'Sebastián', 'Javier',   'Soto',     'Arancibia', 2023, 'sebastian.soto@alumnos.udm.cl');
INSERT INTO Estudiante VALUES (1554, 20987651, '1', 'Catalina',  'Andrea',   'Vargas',   'Bravo',     2022, 'catalina.vargas@alumnos.udm.cl');
INSERT INTO Estudiante VALUES (1665, 19333444, '5', 'Rodrigo',   'Esteban',  'González', 'Ríos',      2021, 'rodrigo.gonzalez@alumnos.udm.cl');
INSERT INTO Estudiante VALUES (1776, 18111222, '8', 'Daniela',   'Elena',    'Ortiz',    'Cáceres',   2020, 'daniela.ortiz@alumnos.udm.cl');
INSERT INTO Estudiante VALUES (1887, 17222333, '9', 'Martín',    'Alejandro','Fuentes',  'Saavedra',  2019, 'martin.fuentes@alumnos.udm.cl');
INSERT INTO Estudiante VALUES (1998, 16444555, '6', 'Fernanda',  'Belén',    'Salinas',  'Pino',      2018, 'fernanda.salinas@alumnos.udm.cl');
INSERT INTO Estudiante VALUES (2109, 23333444, '7', 'Alejandro', 'Javier',   'Ramírez',  'Lagos',     2023, 'alejandro.ramirez@alumnos.udm.cl');
INSERT INTO Estudiante VALUES (2220, 22444555, '8', 'Josefa',    'Trinidad', 'Cifuentes','Moreno',    2023, 'josefa.cifuentes@alumnos.udm.cl');

------------------------------------------------------------
-- SEMESTRE (20)  IDs: 501..520  (fechas coherentes)
------------------------------------------------------------
INSERT INTO Semestre VALUES (501,  2023, 'Otoño',     DATE '2023-03-01', DATE '2023-07-15');
INSERT INTO Semestre VALUES (502,  2023, 'Primavera', DATE '2023-08-01', DATE '2023-12-15');
INSERT INTO Semestre VALUES (503,  2024, 'Otoño',     DATE '2024-03-01', DATE '2024-07-15');
INSERT INTO Semestre VALUES (504,  2024, 'Primavera', DATE '2024-08-01', DATE '2024-12-15');
INSERT INTO Semestre VALUES (505,  2025, 'Otoño',     DATE '2025-03-01', DATE '2025-07-15');
INSERT INTO Semestre VALUES (506,  2022, 'Otoño',     DATE '2022-03-01', DATE '2022-07-15');
INSERT INTO Semestre VALUES (507,  2022, 'Primavera', DATE '2022-08-01', DATE '2022-12-15');
INSERT INTO Semestre VALUES (508,  2021, 'Otoño',     DATE '2021-03-01', DATE '2021-07-15');
INSERT INTO Semestre VALUES (509,  2021, 'Primavera', DATE '2021-08-01', DATE '2021-12-15');
INSERT INTO Semestre VALUES (510,  2020, 'Otoño',     DATE '2020-03-01', DATE '2020-07-15');
INSERT INTO Semestre VALUES (511,  2020, 'Primavera', DATE '2020-08-01', DATE '2020-12-15');
INSERT INTO Semestre VALUES (512,  2019, 'Otoño',     DATE '2019-03-01', DATE '2019-07-15');
INSERT INTO Semestre VALUES (513,  2019, 'Primavera', DATE '2019-08-01', DATE '2019-12-15');
INSERT INTO Semestre VALUES (514,  2018, 'Otoño',     DATE '2018-03-01', DATE '2018-07-15');
INSERT INTO Semestre VALUES (515,  2018, 'Primavera', DATE '2018-08-01', DATE '2018-12-15');
INSERT INTO Semestre VALUES (516,  2017, 'Otoño',     DATE '2017-03-01', DATE '2017-07-15');
INSERT INTO Semestre VALUES (517,  2017, 'Primavera', DATE '2017-08-01', DATE '2017-12-15');
INSERT INTO Semestre VALUES (518,  2016, 'Otoño',     DATE '2016-03-01', DATE '2016-07-15');
INSERT INTO Semestre VALUES (519,  2016, 'Primavera', DATE '2016-08-01', DATE '2016-12-15');
INSERT INTO Semestre VALUES (520,  2015, 'Otoño',     DATE '2015-03-01', DATE '2015-07-15');

------------------------------------------------------------
-- INSCRIPCION (20)  IDs: 60001..60020
-- (nota_final en 1.0..7.0 o NULL)
------------------------------------------------------------
INSERT INTO Inscripcion VALUES (60001, 5.5, 111,  4001, 10001, 503);
INSERT INTO Inscripcion VALUES (60002, 6.2, 222,  4002, 10001, 503);
INSERT INTO Inscripcion VALUES (60003, 4.8, 333,  4006, 10003, 503);
INSERT INTO Inscripcion VALUES (60004, 5.9, 444,  4010, 10004, 504);
INSERT INTO Inscripcion VALUES (60005, 6.7, 555,  4003, 10019, 503);
INSERT INTO Inscripcion VALUES (60006, 6.0, 666,  4004, 10006, 503);
INSERT INTO Inscripcion VALUES (60007, 5.1, 777,  4011, 10011, 504);
INSERT INTO Inscripcion VALUES (60008, 4.3, 888,  4007, 10010, 503);
INSERT INTO Inscripcion VALUES (60009, 6.5, 999,  4019, 10020, 503);
INSERT INTO Inscripcion VALUES (60010, 5.4, 1110, 4018, 10013, 503);
INSERT INTO Inscripcion VALUES (60011, 6.1, 1221, 4005, 10015, 503);
INSERT INTO Inscripcion VALUES (60012, 5.8, 1332, 4020, 10020, 503);
INSERT INTO Inscripcion VALUES (60013, 6.9, 1443, 4016, 10017, 503);
INSERT INTO Inscripcion VALUES (60014, 4.0, 1554, 4012, 10009, 503);
INSERT INTO Inscripcion VALUES (60015, 5.0, 1665, 4013, 10007, 503);
INSERT INTO Inscripcion VALUES (60016, 6.3, 1776, 4014, 10008, 503);
INSERT INTO Inscripcion VALUES (60017, 5.7, 1887, 4015, 10012, 503);
INSERT INTO Inscripcion VALUES (60018, NULL,2109, 4017, 10011, 504);
INSERT INTO Inscripcion VALUES (60019, 6.4, 2220, 4008, 10013, 503);
INSERT INTO Inscripcion VALUES (60020, 5.6, 111,  4003, 10019, 503);

------------------------------------------------------------
-- EVALUACION (20)  IDs: 70001..70020
-- (una o dos por asignatura; puntaje_maximo > 0)
------------------------------------------------------------
INSERT INTO Evaluacion VALUES (70001, 'Prueba 1',     DATE '2024-04-10', 100, 4001);
INSERT INTO Evaluacion VALUES (70002, 'Examen Final', DATE '2024-07-05', 100, 4001);
INSERT INTO Evaluacion VALUES (70003, 'Prueba 1',     DATE '2024-04-15',  50, 4003);
INSERT INTO Evaluacion VALUES (70004, 'Proyecto',     DATE '2024-06-20', 100, 4003);
INSERT INTO Evaluacion VALUES (70005, 'Prueba 1',     DATE '2024-04-12', 100, 4002);
INSERT INTO Evaluacion VALUES (70006, 'Examen',       DATE '2024-07-07', 100, 4002);
INSERT INTO Evaluacion VALUES (70007, 'Control',      DATE '2024-04-18',  50, 4006);
INSERT INTO Evaluacion VALUES (70008, 'Examen',       DATE '2024-07-01', 100, 4006);
INSERT INTO Evaluacion VALUES (70009, 'Práctico',     DATE '2024-06-10',  60, 4010);
INSERT INTO Evaluacion VALUES (70010, 'Examen',       DATE '2024-12-10', 100, 4010);
INSERT INTO Evaluacion VALUES (70011, 'Prueba 1',     DATE '2024-05-10', 100, 4011);
INSERT INTO Evaluacion VALUES (70012, 'Prueba 2',     DATE '2024-06-20', 100, 4011);
INSERT INTO Evaluacion VALUES (70013, 'Ensayo',       DATE '2024-05-25',  50, 4012);
INSERT INTO Evaluacion VALUES (70014, 'Taller',       DATE '2024-06-30',  80, 4013);
INSERT INTO Evaluacion VALUES (70015, 'Prueba 1',     DATE '2024-05-05', 100, 4018);
INSERT INTO Evaluacion VALUES (70016, 'Examen',       DATE '2024-07-06', 100, 4018);
INSERT INTO Evaluacion VALUES (70017, 'Prueba 1',     DATE '2024-05-08', 100, 4019);
INSERT INTO Evaluacion VALUES (70018, 'Examen',       DATE '2024-07-08', 100, 4019);
INSERT INTO Evaluacion VALUES (70019, 'Prueba 1',     DATE '2024-05-03', 100, 4020);
INSERT INTO Evaluacion VALUES (70020, 'Examen',       DATE '2024-07-09', 100, 4020);

------------------------------------------------------------
-- RESULTADO_EVAL (20)  IDs: 80001..80020
-- (puntaje_obt dentro del máximo definido)
------------------------------------------------------------
-- INF101 (4001): Estudiante 111
INSERT INTO Resultado_eval VALUES (80001, 75, 111, 70001);
INSERT INTO Resultado_eval VALUES (80002, 88, 111, 70002);

-- INF202 (4002): Estudiante 222
INSERT INTO Resultado_eval VALUES (80003, 45, 222, 70005);
INSERT INTO Resultado_eval VALUES (80004, 82, 222, 70006);

-- PSI101 (4006): Estudiante 333
INSERT INTO Resultado_eval VALUES (80005, 35, 333, 70007);
INSERT INTO Resultado_eval VALUES (80006, 70, 333, 70008);

-- ADM101 (4010): Estudiante 444
INSERT INTO Resultado_eval VALUES (80007, 52, 444, 70009);
INSERT INTO Resultado_eval VALUES (80008, 85, 444, 70010);

-- ADM202 (4011): Estudiante 777
INSERT INTO Resultado_eval VALUES (80009, 79, 777, 70011);
INSERT INTO Resultado_eval VALUES (80010, 83, 777, 70012);

-- HIS101 (4012): Estudiante 1554
INSERT INTO Resultado_eval VALUES (80011, 40, 1554, 70013);

-- ARQ101 (4013): Estudiante 1665
INSERT INTO Resultado_eval VALUES (80012, 68, 1665, 70014);

-- QUI101 (4018): Estudiantes 1110 y 2220
INSERT INTO Resultado_eval VALUES (80013, 72, 1110, 70015);
INSERT INTO Resultado_eval VALUES (80014, 91, 1110, 70016);
INSERT INTO Resultado_eval VALUES (80015, 64, 2220, 70015);
INSERT INTO Resultado_eval VALUES (80016, 88, 2220, 70016);

-- FIS101 (4019): Estudiante 999
INSERT INTO Resultado_eval VALUES (80017, 82, 999, 70017);
INSERT INTO Resultado_eval VALUES (80018, 90, 999, 70018);

-- MAT101 (4020): Estudiante 1332
INSERT INTO Resultado_eval VALUES (80019, 78, 1332, 70019);
INSERT INTO Resultado_eval VALUES (80020, 84, 1332, 70020);
