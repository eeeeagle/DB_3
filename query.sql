/* TASK 1 */
SELECT employee.* FROM employee
JOIN employee_application ON employee_application.employee_id = employee.employee_id
JOIN vacancy ON vacancy.vacancy_id = employee_application.vacancy_id
WHERE vacancy.vacancy_id = 5
ORDER BY employee.second_name, employee.first_name, employee.patronymic;

/* TASK 2 */
SELECT employee.* FROM employee
JOIN employee_application ON employee_application.employee_id = employee.employee_id
WHERE employee_application.date BETWEEN "2023-01-01" AND "2023-12-31";

/* TASK 3 */
SELECT employee.* FROM employee
JOIN employee_application ON employee_application.employee_id = employee.employee_id
JOIN vacancy ON vacancy.vacancy_id = employee_application.vacancy_id
JOIN employer_application ON employer_application.vacancy_id = vacancy.vacancy_id
WHERE employer_application.salary <= employee.salary;

/* TASK 4 */
SELECT vacancy_id, name, sum(count_apps) as apps_count FROM 
(
	SELECT vacancy.vacancy_id, vacancy.name, count(vacancy.vacancy_id) as count_apps FROM vacancy
	JOIN employer_application ON employer_application.vacancy_id = vacancy.vacancy_id
    GROUP BY vacancy.vacancy_id
    UNION ALL
	SELECT vacancy.vacancy_id, vacancy.name, count(vacancy.vacancy_id) as count_apps FROM vacancy
	JOIN employee_application ON employee_application.vacancy_id = vacancy.vacancy_id
    GROUP BY vacancy.vacancy_id
) t
GROUP BY vacancy_id, name;

/* TASK 5 */
SELECT employer.employer_name, count(*) AS application_count FROM employer
JOIN employer_application ON employer_application.employer_id = employer.employer_id
GROUP BY employer.employer_name
ORDER BY application_count DESC LIMIT 5;

/* TASK 6 */
SELECT employer.* FROM employer
JOIN employer_application ON employer_application.employer_id = employer.employer_id
WHERE employer_application.salary = (SELECT MAX(employer_application.salary) FROM employer_application);