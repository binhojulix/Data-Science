--
--$Header: hr_idx.sql 03-mar-2001.10:05:15 ahunold Exp $
--
--hr_idx.sql
--
-- Copyright (c) Oracle Corporation 2001. All Rights Reserved.
--
--   NAME
--     hr_idx.sql - Create indexes for HR schema
--
--   DESCRIPTION
--
--
--   NOTES
--
--
--   CREATED by Nancy Greenberg - 06/01/00
--   MODIFIED   (MM/DD/YY)
--   ahunold     02/20/01 - New header
--   vpatabal    03/02/01 - Removed DROP INDEX statements

--Prompt => Criando �ndices EMPLOYEES ....

CREATE INDEX emp_department_ix
       ON employees (department_id);

CREATE INDEX emp_job_ix
       ON employees (job_id);

CREATE INDEX emp_manager_ix
       ON employees (manager_id);

CREATE INDEX emp_name_ix
       ON employees (last_name, first_name);


--Prompt => Criando �ndices DEPARTMENTS ....

CREATE INDEX dept_location_ix
       ON departments (location_id);


--Prompt => Criando �ndices DEPARTMENTS ....

CREATE INDEX jhist_job_ix
       ON job_history (job_id);

CREATE INDEX jhist_employee_ix
       ON job_history (employee_id);

CREATE INDEX jhist_department_ix
       ON job_history (department_id);


--Prompt => Criando �ndices LOCATIONS ....

CREATE INDEX loc_city_ix
       ON locations (city);

CREATE INDEX loc_state_province_ix 
       ON locations (state_province);

CREATE INDEX loc_country_ix
       ON locations (country_id);

COMMIT;

