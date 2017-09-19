CREATE OR REPLACE FORCE VIEW "LAST_DISTR_NOTICE_VW" AS
SELECT ld.LST_DISTR_NOTICE_ID,
  ld.CUST_NAME ,
  ld.DISTR_REASON,
  ld.ACCOUNT_NUMBERS,
  ld.DISTR_AMOUNT,
  ld.TOTAL_CDS_AMOUNT,
  ld.ENTRY_DATE ,
  ld.DISTRIBUTION_DATE,
  ld.DISTR_TYPE,
  ld.ACCOUNT_NUMBER,
  ld.SAVINGS_PLAN_NO,
  ld.INSTITUTION_NUMBER,
  ld.INST_NAME,
  r.region_id,
  r.region_name
FROM LAST_DISTR_NOTICE_DETAILS ld,
  deposit_account_vw dav,
  Branch b,
  Region r,
  INSTITUTION INST
WHERE ld.INSTITUTION_NUMBER = inst.institution_unique_id AND
ld.account_number=dav.account_no and 
ld.institution_number=dav.institution_id and
dav.assigned_branch=b.unique_id and
b.region_id=r.region_unique_id and
r.institution_id=inst.institution_unique_id and
TRUNC(ENTRY_DATE)    = TRUNC(INST.LAST_PROCESSED_DATE)
ORDER BY SAVINGS_PLAN_NO ASC;