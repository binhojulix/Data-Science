Rem
Rem $Header: hr_drop.sql 03-mar-2001.10:05:14 ahunold Exp $
Rem
Rem hr_drop.sql
Rem
Rem  Copyright (c) Oracle Corporation 2001. All Rights Reserved.
Rem
Rem    NAME
Rem      hr_drop.sql - Drop objects from HR schema
Rem
Rem    DESCRIPTION
Rem
Rem
Rem    NOTES
Rem
Rem    CREATED by Nancy Greenberg - 06/01/00
Rem    MODIFIED   (MM/DD/YY)
Rem    ahunold     02/20/01 - New header, non-table objects
Rem    vpatabal    03/02/01 - DROP TABLE region 

-- SET FEEDBACK OFF -- comentado por Eduardo 16.08.2012.
SET NUMWIDTH 10
SET LINESIZE 80
SET TRIMSPOOL ON
SET TAB OFF
SET PAGESIZE 100
SET ECHO OFF

--CONNECT hr/&password_HR
Prompt => Excluindo procedimento ADD_JOB_HISTORY ....
DROP PROCEDURE add_job_history;

Prompt => Excluindo procedimento SECURE_DML ....
DROP PROCEDURE secure_dml;

Prompt => Excluindo visão EMP_DETAILS_VIEW ....
DROP VIEW emp_details_view;

Prompt => Excluindo sequencia DEPARTMENTS_SEQ ....
DROP SEQUENCE departments_seq;

Prompt => Excluindo sequencia EMPLOYEES_SEQ ....
DROP SEQUENCE employees_seq;

Prompt => Excluindo sequencia LOCATIONS_SEQ ....
DROP SEQUENCE locations_seq;

Prompt => Excluindo tabela REGIONS ....
DROP TABLE regions     CASCADE CONSTRAINTS;

Prompt => Excluindo tabela DEPARTMENTS ....
DROP TABLE departments CASCADE CONSTRAINTS;

Prompt => Excluindo tabela LOCATIONS ....
DROP TABLE locations   CASCADE CONSTRAINTS;

Prompt => Excluindo tabela JOBS ....
DROP TABLE jobs        CASCADE CONSTRAINTS;

Prompt => Excluindo tabela JOB_HISTORY ....
DROP TABLE job_history CASCADE CONSTRAINTS;

Prompt => Excluindo tabela EMPLOYEES ....
DROP TABLE employees   CASCADE CONSTRAINTS;

Prompt => Excluindo tabela COUNTRIES ....
DROP TABLE countries   CASCADE CONSTRAINTS;  

COMMIT;

