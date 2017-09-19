ALTER TABLE ACCOUNT_HISTORY_ITEM ADD HIDE_IN_STMT CHAR(1) DEFAULT '0';
ALTER TABLE ACCOUNT_HISTORY_ITEM ADD REASON_4_HIDE_IN_STMT VARCHAR2(25);

CREATE OR REPLACE VIEW ACCOUNT_HISTORY_ITEM_VW AS
(
   select
   a.ACCOUNT_NO,
   itl.INSTITUTION_ID,
   ahi."ACCOUNT_ID",
   ahi."TRANS_CODE",
   ahi."AMOUNT",
   ahi."CHEQUE",
   ahi."TRACE",
   ahi."POST_DATE",
   ahi."EFFECTIVE_DATE",
   ahi."BALANCE",
   ahi."POST_STATUS",
   ahi."SOURCE_NAME",
   ahi."IRA_DIST",
   itl."DESCRIPTION",
   ahi."STATEMENT_DATE",
   ahi."COMPANY_NAME",
   ahi."ENTRY_DATE",
   ahi."CUSTOMER_NO",
   ahi."TRANSACTION_ID",
   ahi."CURRENCY",
   ahi."PAYMENT_ID",
   ahi."POSTED_TO",
   ahi."EVENT_ID",
   ahi."SOURCE_TRANS_CODE",
   ahi."ORG_TRANS_CODE",
   ahi."TRANSACTION_DETAILS",
   ahi."COMPANY_DESCRIPTION",
   ahi."ENTRY_TYPE_ID",
   itl.TRANS_CODE as CIF_TRANS_CODE,
   ahi."TRANS_ACCOUNT_NO",
   a."ACCOUNT_TYPE_ID",
   itl."POSTING_SEQUENCE",
   ahi.DESCRIPTION as TRAN_DESC,
   ahi."HIDE_IN_STMT",
   ahi."REASON_4_HIDE_IN_STMT",
   ahi.TRANS_ACCOUNT_ID
   from ACCOUNT a,
   ACCOUNT_HISTORY_ITEM ahi,
   INSTITUTION_TRANSCODE_LOOKUP itl ,
   entry_type et
   where a.ACCOUNT_ID=ahi.ACCOUNT_ID
   and a.INSTITUTION_ID=itl.INSTITUTION_ID
   and a.ACCOUNT_TYPE_ID=itl.ACCOUNT_TYPE_ID
   and itl.ENTRY_TYPE= ahi.TRANS_CODE
   and et.id=itl.TRANS_CODE
   and et.INSTITUTION_ID = itl.INSTITUTION_ID
);

CREATE OR REPLACE VIEW GL_TRANSACTION_POSTTODAY_VW AS
SELECT tp.account_id, tp.account_number, b.branch_id, TP.INSTITUTION_ID, 
TP.AMOUNT, TP.TRANSACTION_ID, TP.TRANS_CODE, TP.DESCRIPTION, TP.POST_STATUS, 
TP.EFFECTIVE_DATE, TP.ENTRY_DATE, TP.SOURCE_NAME, 
(case when tp.ACCOUNT_TYPE_ID in (10,21,22)
     then nvl(da.account_type_id,tp.account_type_id) else tp.ACCOUNT_TYPE_ID end) 
ACCOUNT_TYPE_ID, TP.POST_DATE, DA.ACCOUNT_CATEGORY, P.PRODUCT_TYPE_ID, DA.
     STATUS_CODE, tp.FILE_NAME
FROM transaction_posttoday tp, deposit_account_vw da, branch b, 
PRODUCT_TYPE P
WHERE tp.account_number = da.account_no(+) AND
     tp.institution_id = da.institution_id(+) AND
     da.assigned_branch = b.unique_id(+) AND
     DA.PRODUCT_ID=P.UNIQUE_ID(+);