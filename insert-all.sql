-- Insert a row into multiple tables using INSERT ALL

/* The INSERT ALL statement in Oracle SQL is used to insert rows into multiple tables with a single SQL statement */

INSERT ALL
    INTO employees (employee_id, first_name, last_name) VALUES (1001, 'John', 'Doe')
    INTO departments (department_id, department_name) VALUES (10, 'Sales')
    INTO job_history (employee_id, start_date, end_date, job_id) VALUES (1001, TO_DATE('2023-04-03', 'YYYY-MM-DD'), NULL, 'SA_REP')
SELECT * FROM dual;
