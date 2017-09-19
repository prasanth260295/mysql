--created for deposits extraction file based on amout slab
--create table GLExtraction_Amount_Slab
--(
--Original_TranCode VARCHAR2(20),Old_TranCode VARCHAR2(20),
--New_TranCode VARCHAR2(20),Account_Type char(20),Amount NUMBER(19,2)
--)

create table GLExtraction_Amount_Slab
(
	Original_TranCode VARCHAR2(20),Old_TranCode VARCHAR2(20),
	New_TranCode VARCHAR2(20),Account_Type char(20),Amount NUMBER(19,2)
);

CREATE OR REPLACE VIEW GL_TRANSACTION_POSTTODAY_VW
AS
  SELECT tp.account_id,
    tp.account_number,
    b.branch_id,
    TP.INSTITUTION_ID,
    TP.AMOUNT,
    TP.TRANSACTION_ID,
    TP.TRANS_CODE,
    TP.DESCRIPTION,
    TP.POST_STATUS,
    TP.EFFECTIVE_DATE,
    TP.ENTRY_DATE,
    TP.SOURCE_NAME,
    (
    CASE
      WHEN tp.ACCOUNT_TYPE_ID IN (10,21,22)
      THEN NVL(da.account_type_id,tp.account_type_id)
      ELSE tp.ACCOUNT_TYPE_ID
    END) ACCOUNT_TYPE_ID,
    TP.POST_DATE,
    DA.ACCOUNT_CATEGORY,
    P.PRODUCT_TYPE_ID,
    DA. STATUS_CODE,
    tp.FILE_NAME,
    da.ledger_balance
  FROM transaction_posttoday tp,
    deposit_account_vw da,
    branch b,
    PRODUCT_TYPE P
  WHERE tp.account_number = da.account_no(+)
  AND tp.institution_id   = da.institution_id(+)
  AND da.assigned_branch  = b.unique_id(+)
  AND DA.PRODUCT_ID       =P.UNIQUE_ID(+)
  AND DA.ledger_balance is not null;
  
  create table ENTRY_TYPE_STATUS_LOG (ENTRY_DATE DATE,TRANSACTION_PROCESSED varchar2(2000));