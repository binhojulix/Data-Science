--
--$Header: hr_drop.sql 03-mar-2001.10:05:14 ahunold Exp $
--
--hr_drop.sql
--
-- Copyright (c) Oracle Corporation 2001. All Rights Reserved.
--
--   NAME
--     hr_drop.sql - Drop objects from HR schema
--
--   DESCRIPTION
--
--
--   NOTES
--
--   CREATED by Nancy Greenberg - 06/01/00
--   MODIFIED   (MM/DD/YY)
--   ahunold     02/20/01 - New header, non-table objects
--   vpatabal    03/02/01 - DROP TABLE region 

--Prompt => Excluindo vis�o EMP_DETAILS_VIEW ....
DROP VIEW emp_details_view;

--Prompt => Excluindo sequencia DEPARTMENTS_SEQ ....
DROP SEQUENCE departments_seq;

--Prompt => Excluindo sequencia EMPLOYEES_SEQ ....
DROP SEQUENCE employees_seq;

--Prompt => Excluindo sequencia LOCATIONS_SEQ ....
DROP SEQUENCE locations_seq;

--Prompt => Excluindo tabela REGIONS ....
DROP TABLE regions     CASCADE CONSTRAINTS;

--Prompt => Excluindo tabela DEPARTMENTS ....
DROP TABLE departments CASCADE CONSTRAINTS;

--Prompt => Excluindo tabela LOCATIONS ....
DROP TABLE locations   CASCADE CONSTRAINTS;

--Prompt => Excluindo tabela JOBS ....
DROP TABLE jobs        CASCADE CONSTRAINTS;

--Prompt => Excluindo tabela JOB_HISTORY ....
DROP TABLE job_history CASCADE CONSTRAINTS;

--Prompt => Excluindo tabela EMPLOYEES ....
DROP TABLE employees   CASCADE CONSTRAINTS;

--Prompt => Excluindo tabela COUNTRIES ....
DROP TABLE countries   CASCADE CONSTRAINTS;  

COMMIT;
