INSERT INTO ENTRY_TYPE(UNIQUE_ID,ID,INSTITUTION_ID,DEBIT_OR_CREDIT,DESCRIPTION,ACCOUNT_CATEGORY) VALUES(8805,8805,null,0,'Advance',2);

INSERT INTO LOAN_ENTRY_POSTING_RULE(POSTING_RULE_ID) VALUES(8805);

INSERT INTO LOAN_ENTRY_TYPE(ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES(8805,8805,8805,8805);


UPDATE LOAN_ENTRY_POSTING_RULE SET AFFECTS_DATE_LAST_ACTIVITY=1  WHERE POSTING_RULE_ID=8805;
UPDATE LOAN_ENTRY_POSTING_RULE SET AFFECTS_PRINCIPAL_BALANCE=1  WHERE POSTING_RULE_ID=8805;
UPDATE LOAN_ENTRY_POSTING_RULE SET AFFECTS_DATE_NEXT_DUE=1  WHERE POSTING_RULE_ID=8805;
UPDATE LOAN_ENTRY_POSTING_RULE SET AFFECTS_LAST_TRAN_AMOUNT=1  WHERE POSTING_RULE_ID=8805;
UPDATE LOAN_ENTRY_POSTING_RULE SET AFFECTS_AMORTIZED_BALANCE=1  WHERE POSTING_RULE_ID=8805;
UPDATE LOAN_ENTRY_POSTING_RULE SET AFF_CRLINEDRAWNAMNT=1  WHERE POSTING_RULE_ID=8805;
UPDATE LOAN_ENTRY_POSTING_RULE SET AFF_UNUSEDCRLINEAMNT=1  WHERE POSTING_RULE_ID=8805;
UPDATE LOAN_ENTRY_POSTING_RULE SET AFF_CRLINESTATUS=1  WHERE POSTING_RULE_ID=8805;



INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK(EVENT_TYPE_ID,ENTRY_TYPE_ID) VALUES(5,1801);
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK(EVENT_TYPE_ID,ENTRY_TYPE_ID) VALUES(5,1817);
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK(EVENT_TYPE_ID,ENTRY_TYPE_ID) VALUES(5,1843);
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK(EVENT_TYPE_ID,ENTRY_TYPE_ID) VALUES(5,1844);
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK(EVENT_TYPE_ID,ENTRY_TYPE_ID) VALUES(5,8805);


INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK(EVENT_TYPE_ID,ENTRY_TYPE_ID) VALUES(110,1943);
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK(EVENT_TYPE_ID,ENTRY_TYPE_ID) VALUES(110,1944);

INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK(EVENT_TYPE_ID,ENTRY_TYPE_ID) VALUES(121,1943);
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK(EVENT_TYPE_ID,ENTRY_TYPE_ID) VALUES(121,1944);


DELETE FROM IPS_LOAN_EVENT_TYPE WHERE UNIQUE_ID=95;

DELETE FROM BSV_LOAN_EVENT_TYPE WHERE UNIQUE_ID=805 AND BSV_EVENT_CODE LIKE '805';

DELETE FROM IPS_LOAN_EVENT_TYPE WHERE BSV_EVENT_TYPE_ID=751 AND TRAN_CODE LIKE '751' 
AND ACCOUNT_TYPE_ID=208;

DELETE FROM LOAN_EVENT_ENTRY_TYPE_LINK WHERE EVENT_TYPE_ID=110 AND ENTRY_TYPE_ID=1845;

DELETE FROM LOAN_EVENT_ENTRY_TYPE_LINK WHERE EVENT_TYPE_ID=111 AND ENTRY_TYPE_ID=1845;

update LOAN_EVENT_TYPE  Set EVENT_GROUP=1 where EVENT_TYPE_ID in (299,312);
update LOAN_EVENT_TYPE  Set EVENT_GROUP=0 where EVENT_TYPE_ID in (99,112,42,113,114,115);


INSERT INTO LOAN_EVENT_TYPE(EVENT_TYPE_ID,CORESOFT_EVENT_CODE,EVENT_GROUP,REVERSAL_EVENT_TYPE_ID,POSTING_ORDER,DESCRIPTION,DEBIT_OR_CREDIT)
				VALUES (36,'036', 0, 236,null,'Credit Memo LifeAH Payment',1);
INSERT INTO LOAN_EVENT_TYPE(EVENT_TYPE_ID,CORESOFT_EVENT_CODE,EVENT_GROUP,REVERSAL_EVENT_TYPE_ID,POSTING_ORDER,DESCRIPTION,DEBIT_OR_CREDIT)
				VALUES (236,'236',1,36,null,'Credit Memo LifeAH Payment Reversal',0);
				
INSERT INTO LOAN_EVENT_TYPE(EVENT_TYPE_ID,CORESOFT_EVENT_CODE,EVENT_GROUP,REVERSAL_EVENT_TYPE_ID,POSTING_ORDER,DESCRIPTION,DEBIT_OR_CREDIT)
				VALUES (26,'026', 0, 226,null,'Debit Memo LifeAH Payment',0);
INSERT INTO LOAN_EVENT_TYPE(EVENT_TYPE_ID,CORESOFT_EVENT_CODE,EVENT_GROUP,REVERSAL_EVENT_TYPE_ID,POSTING_ORDER,DESCRIPTION,DEBIT_OR_CREDIT)
				VALUES (226,'226',1,26,null,'Debit Memo LifeAH Payment Reversal',1);

INSERT INTO LOAN_ENTRY_POSTING_RULE(POSTING_RULE_ID) VALUES(8836);
INSERT INTO LOAN_ENTRY_POSTING_RULE(POSTING_RULE_ID) VALUES(8826);

UPDATE LOAN_ENTRY_POSTING_RULE SET AFFECTS_DATE_LAST_ACTIVITY=1,AFFECTS_LAST_TRAN_AMOUNT=1  WHERE POSTING_RULE_ID in (8826,8836);
				

INSERT INTO ENTRY_TYPE(UNIQUE_ID,ID,INSTITUTION_ID,DEBIT_OR_CREDIT,DESCRIPTION,ACCOUNT_CATEGORY) VALUES(8836,8836,null,0,'Credit Memo LifeAH Payment',2);
INSERT INTO ENTRY_TYPE(UNIQUE_ID,ID,INSTITUTION_ID,DEBIT_OR_CREDIT,DESCRIPTION,ACCOUNT_CATEGORY) VALUES(8826,8826,null,1,'Debit Memo LifeAH Payment',2);


INSERT INTO LOAN_ENTRY_TYPE(ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES(8836,8836,8836,8836);
INSERT INTO LOAN_ENTRY_TYPE(ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES(8826,8826,8826,8826);



INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK(EVENT_TYPE_ID,ENTRY_TYPE_ID) VALUES(36,1906);
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK(EVENT_TYPE_ID,ENTRY_TYPE_ID) VALUES(36,8836);


INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK(EVENT_TYPE_ID,ENTRY_TYPE_ID) VALUES(26,1806);
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK(EVENT_TYPE_ID,ENTRY_TYPE_ID) VALUES(26,8826);

insert into LOAN_EXCEPTION_CODE_LOOKUP(EXCEPTION_CODE_ID, DESCRIPTION) values(71,'Effective date should not be greater than First Payment date.');

