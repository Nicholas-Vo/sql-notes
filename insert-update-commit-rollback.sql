/* Basic INSERT command */

INSERT INTO employees (employee_id, first_name, last_name, email, hire_date, job_id, salary)
VALUES (1001, 'John', 'Doe', 'jdoe@example.com', TO_DATE('2023-04-03', 'YYYY-MM-DD'), 'IT_PROG', 5000);

/* The UPDATE statement in Oracle SQL is used to modify existing rows in a table. */

UPDATE employees
SET salary = 5500
WHERE employee_id = 1001;

/*  The COMMIT statement in Oracle SQL is used to permanently 
 save the changes made by DML (Data Manipulation Language) 
 statements, such as INSERT, UPDATE, and DELETE statements, 
 to the database. */
 
UPDATE employees SET salary = 5500
WHERE employee_id = 1001;

COMMIT;

/* The ROLLBACK statement in Oracle SQL is used to undo changes 
made by DML (Data Manipulation Language) statements since the 
last COMMIT or SAVEPOINT statement. */

UPDATE employees
SET salary = 5500
WHERE employee_id = 1001;

SAVEPOINT salary_change;

UPDATE employees
SET salary = 6000
WHERE employee_id = 1002;

ROLLBACK TO salary_change;


 
 
