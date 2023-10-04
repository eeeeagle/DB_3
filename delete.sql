DELETE FROM `recruitment agency`.employer_application
WHERE application_id = 7;

/* Recover*/
INSERT INTO employer_application VALUES (7, 10, 3, "IQ > 150", 120000, "2021-01-08");

/*
*
*
*
*/


DELETE FROM `recruitment agency`.employer_application
WHERE application_id > 7;

/* Recover*/
INSERT INTO employer_application VALUES (8, 9, 5, "Выносливость", 30000, "2022-12-24");
INSERT INTO employer_application VALUES (9, 4, 8, "Высшее образование", 40000, "2022-04-18");
INSERT INTO employer_application VALUES (10, 7, 1, "Находчивость", 35000, "2018-07-30");

/*
*
*
*
*/

TRUNCATE TABLE `recruitment agency`.employee_application;

/* Recover*/
INSERT INTO employee_application VALUES (1, 5, 7, "2025-09-12");
INSERT INTO employee_application VALUES (2, 1, 4, "2023-11-01");
INSERT INTO employee_application VALUES (3, 10, 4, "1983-04-30");
INSERT INTO employee_application VALUES (4, 9, 1, "2000-05-01");
INSERT INTO employee_application VALUES (5, 4, 6, "2023-02-28");
INSERT INTO employee_application VALUES (6, 3, 9, "2021-08-21");
INSERT INTO employee_application VALUES (7, 7, 5, "2023-06-12");
INSERT INTO employee_application VALUES (8, 8, 5, "2023-07-04");
INSERT INTO employee_application VALUES (9, 2, 3, "2022-05-16");
INSERT INTO employee_application VALUES (10, 6, 2, "2021-10-31");