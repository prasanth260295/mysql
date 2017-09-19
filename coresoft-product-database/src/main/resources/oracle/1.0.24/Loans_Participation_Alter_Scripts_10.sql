create table LOAN_PARTICIPATION (PARTICIPATION_ID Nvarchar2(30),CONTRACT_ID Number(15,0), account_id nvarchar2(30));

alter table loan add DEFINITION_ID Number(15,0);

alter table loan add  DEFINITION_TYPE Nvarchar2(30);

update loan l set DEFINITION_ID = (Select ACCOUNT_ID from LOAN_ACCOUNT la where la.ACCOUNT_ID = l.account_id);
update loan  set DEFINITION_TYPE = 'GROSS' where DEFINITION_ID in(select ACCOUNT_ID from loan_account);

alter table LOAN_ACCOUNT_EVENT add SOURCE_EVENT_ID Number(10,0);