--8818  Origination Fee Pymnt
--8825  Db Adj Int
--8835  Cr Adj Int



INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (8818);
UPDATE LOAN_ENTRY_POSTING_RULE SET	AFFECTS_DATE_LAST_ACTIVITY =1  WHERE POSTING_RULE_ID = 8818;
UPDATE LOAN_ENTRY_POSTING_RULE SET	AFFECTS_LAST_TRAN_AMOUNT =1  WHERE POSTING_RULE_ID = 8818;

INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (8825);
UPDATE LOAN_ENTRY_POSTING_RULE SET	AFFECTS_DATE_LAST_ACTIVITY =1  WHERE POSTING_RULE_ID = 8825;
UPDATE LOAN_ENTRY_POSTING_RULE SET	AFFECTS_LAST_TRAN_AMOUNT =1  WHERE POSTING_RULE_ID = 8825;

INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (8835);
UPDATE LOAN_ENTRY_POSTING_RULE SET	AFFECTS_DATE_LAST_ACTIVITY =1  WHERE POSTING_RULE_ID = 8835;
UPDATE LOAN_ENTRY_POSTING_RULE SET	AFFECTS_LAST_TRAN_AMOUNT =1  WHERE POSTING_RULE_ID = 8835;
-----------------------------
update ENTRY_TYPE  set UNIQUE_ID ='8818'  where UNIQUE_ID = '8836' ;
update ENTRY_TYPE  set ID ='8818'  where  UNIQUE_ID ='8818'  ;
update  LOAN_ENTRY_TYPE set ENTRY_TYPE_ID='8818'  where ENTRY_TYPE_ID ='8836'  ;
update  LOAN_ENTRY_TYPE set ENTRY_NAME = '8818' where ENTRY_TYPE_ID = '8818' ;
update  LOAN_ENTRY_TYPE set REVERSAL_ENTRY_TYPE_ID = '8818' where ENTRY_TYPE_ID = '8818' ;
update  LOAN_ENTRY_TYPE set POSTING_RULE_ID ='8818'  where ENTRY_TYPE_ID = '8818' ;
delete from LOAN_ENTRY_POSTING_RULE  where POSTING_RULE_ID = '8836' ;

update  LOAN_ENTRY_TYPE set ENTRY_TYPE_ID='8825'  where ENTRY_TYPE_ID ='8837'  ;
update  LOAN_ENTRY_TYPE set ENTRY_NAME = '8825' where ENTRY_TYPE_ID = '8825' ;
update  LOAN_ENTRY_TYPE set REVERSAL_ENTRY_TYPE_ID = '8825' where ENTRY_TYPE_ID = '8825' ;
update  LOAN_ENTRY_TYPE set POSTING_RULE_ID ='8825'  where ENTRY_TYPE_ID = '8825' ;
delete from LOAN_ENTRY_POSTING_RULE  where POSTING_RULE_ID = '8837' ;

update  LOAN_ENTRY_TYPE set ENTRY_TYPE_ID='8835'  where ENTRY_TYPE_ID ='8838'  ;
update  LOAN_ENTRY_TYPE set ENTRY_NAME = '8835' where ENTRY_TYPE_ID = '8835' ;
update  LOAN_ENTRY_TYPE set REVERSAL_ENTRY_TYPE_ID = '8835' where ENTRY_TYPE_ID = '8835' ;
update  LOAN_ENTRY_TYPE set POSTING_RULE_ID ='8835'  where ENTRY_TYPE_ID = '8835' ;
delete from LOAN_ENTRY_POSTING_RULE  where POSTING_RULE_ID = '8838' ;


