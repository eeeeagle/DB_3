UPDATE `recruitment agency`.employer 
SET contact_patronymic = "Взяткович" 
WHERE employer_id = 4;

UPDATE `recruitment agency`.employer
SET contact_patronymic = "Анатольевич" 
WHERE employer_id = 4;

UPDATE `recruitment agency`.employee
SET work_experience = work_experience + 1 
WHERE employee_id <= 5;

UPDATE `recruitment agency`.employee
SET work_experience = work_experience - 1 
WHERE employee_id <= 5;