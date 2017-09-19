alter table investor add ACCOUNT_TYPE VARCHAR2(30);
alter table investor add ACCOUNT_NO VARCHAR2(30);
alter table investor add ROUT_TRAN_NUM VARCHAR2(30);
alter table investor add DISTBUR_MODE VARCHAR2(30);
alter table investor add MIN_REMIT_AMT NUMBER(20,5);

alter table loan_participation add LAST_REMIT_DATE DATE;
alter table loan_participation add REMIT_PRINCIPLE NUMBER(20,5);
alter table loan_participation add REMIT_INTEREST NUMBER(20,5);