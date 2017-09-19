CREATE OR REPLACE FORCE VIEW "TXN_ACCOUNT_TYPE_VW" ("ACCOUNT_TYPE_ID", "ACCOUNT_TYPE") AS 
(SELECT ACCOUNT_TYPE_ID,ACCOUNT_TYPE FROM ACCOUNT_TYPE_LOOKUP);

CREATE OR REPLACE FORCE VIEW "TXN_INSTITUTION_VW" ("INSTITUTION_ID", "INSTITUTION_NAME", "PARENT_NAME", "PARENT_ID", "LAST_PROCESSED_DATE") AS 
(SELECT INSTITUTION_ID,INSTITUTION_NAME,PARENT_NAME,PARENT_ID,LAST_PROCESSED_DATE FROM INSTITUTION);

CREATE OR REPLACE FORCE VIEW "TXN_BRANCHESINFO_VW" ("INSTITUTION_ID", "BRANCH_ID", "BRANCH_NAME") AS 
(SELECT INSTITUTION_ID,BRANCH_ID,BRANCH_NAME FROM BRANCH);