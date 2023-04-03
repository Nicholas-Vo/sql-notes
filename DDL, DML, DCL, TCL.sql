-- DDL (Data Definition Language) commands

-- Create a new table
CREATE TABLE employees (
  employee_id NUMBER(6),
  first_name VARCHAR2(20),
  last_name VARCHAR2(25),
  email VARCHAR2(25),
  hire_date DATE,
  job_id VARCHAR2(10),
  salary NUMBER(8,2),
  commission_pct NUMBER(2,2),
  department_id NUMBER(4)
);

-- Add a new column to an existing table
ALTER TABLE employees ADD manager_id NUMBER(6);

-- Rename an existing table
ALTER TABLE employees RENAME TO new_employees;

-- DML (Data Manipulation Language) commands

-- Insert a new row into the "new_employees" table
INSERT INTO new_employees (employee_id, first_name, last_name, email, hire_date, job_id, salary, commission_pct, department_id)
VALUES (1003, 'Jane', 'Doe', 'jane@example.com', TO_DATE('2023-04-03', 'YYYY-MM-DD'), 'IT_PROG', 5000, NULL, NULL);

-- Update the "salary" column for an employee
UPDATE new_employees
SET salary = 5500
WHERE employee_id = 1001;

-- Delete a row from the "new_employees" table
DELETE FROM new_employees
WHERE employee_id = 1003;

-- DCL (Data Control Language) commands

-- Grant privileges to a user
GRANT SELECT, INSERT, UPDATE, DELETE ON new_employees TO scott;

-- Revoke privileges from a user
REVOKE DELETE ON new_employees FROM scott;

-- TCL (Transaction Control Language) commands

-- Begin a new transaction
START TRANSACTION;

-- Insert a new row into the "new_employees" table
INSERT INTO new_employees (employee_id, first_name, last_name, email, hire_date, job_id, salary, commission_pct, department_id)
VALUES (1003, 'Jane', 'Doe', 'jane@example.com', TO_DATE('2023-04-03', 'YYYY-MM-DD'), 'IT_PROG', 5000, NULL, NULL);

-- Rollback the transaction (undoing the insert)
ROLLBACK;

-- Commit the changes made to the "new_employees" table
COMMIT;
