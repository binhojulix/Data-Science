rem
rem Header: hr_main.sql 09-jan-01
rem
rem Copyright (c) 2001, Oracle Corporation.  All rights reserved.  
rem
rem Owner  : ahunold
rem
rem NAME
rem   hr_main.sql - Main script for HR schema
rem
rem DESCRIPTON
rem   HR (Human Resources) is the smallest and most simple one 
rem   of the Sample Schemas
rem   
rem NOTES
rem   Run as SYS or SYSTEM
rem
rem MODIFIED   (MM/DD/YY)
rem   ahunold   08/28/01 - roles
rem   ahunold   07/13/01 - NLS Territory
rem   ahunold   04/13/01 - parameter 5, notes, spool
rem   ahunold   03/29/01 - spool
rem   ahunold   03/12/01 - prompts
rem   ahunold   03/07/01 - hr_analz.sql
rem   ahunold   03/03/01 - HR simplification, REGIONS table
rem   ngreenbe  06/01/00 - created

spool C:\base_HR\hr_logexec.txt

SET FEEDBACK OFF
SET ECHO OFF
SET TERMOUT ON
--SET TAB OFF


ALTER SESSION SET NLS_LANGUAGE=American;
ALTER SESSION SET NLS_TERRITORY=America;

Prompt
Prompt Preparando execução...espere
Prompt

--SET TERMOUT OFF

--
-- crop tables, sequences, procedures and views
--
Prompt ----------------------------------

Prompt Executando arquivo HR_DROP.SQL ....
Prompt 
@@hr_drop.sql
Prompt 
Prompt ---------------------------------

--
-- create tables, sequences and constraint
--
Prompt Executando arquivo HR_CRE.SQL ....
Prompt 
@@hr_cre.sql
Prompt 
Prompt ----------------------------------

-- 
-- populate tables
--
Prompt Executando arquivo HR_POPUL.SQL ....
Prompt 
@@hr_popul.sql
Prompt 
Prompt ----------------------------------

--
-- create indexes
--
Prompt Executando arquivo HR_IDX.SQL ....
Prompt 
@@hr_idx.sql
Prompt 
Prompt ----------------------------------
--
-- create procedural objects
--
Prompt Executando arquivo HR_CODE.SQL ....
Prompt 
@@hr_code.sql
Prompt 
Prompt ----------------------------------

--
-- add comments to tables and columns
--
Prompt Executando arquivo HR_COMNT.SQL ....
Prompt 
@@hr_comnt.sql
Prompt 
Prompt ----------------------------------
--
-- gather schema statistics
--
--Prompt Executando arquivo HR_ANALZ.SQL ....
--Prompt 
--@@hr_analz.sql
--Prompt 
--Prompt ----------------------------------

--SET TERMOUT ON

Prompt
Prompt Execução finalizada...
Prompt

spool off