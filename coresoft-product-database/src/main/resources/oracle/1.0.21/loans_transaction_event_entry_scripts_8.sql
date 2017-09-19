-----Extension -  Bank Rebate
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES(42, 1910);


--LOAN_ENTRY_POSTING_RULE for extension dummy entry
UPDATE LOAN_ENTRY_POSTING_RULE SET	AFFECTS_BILL	=1  WHERE POSTING_RULE_ID = 8842;

-- BILLING_BUCKET
alter table BILLING_BUCKET add EXTENDED number(1) ;


--Escrow Disbursement
alter table loan_account_event add ESCROW_AGENCY_CODE VARCHAR2(30);
alter table loan_account_event add ESCROW_AGENCY_TYPE VARCHAR2(30);

ALTER TABLE LOAN_ENTRY_POSTING_RULE ADD AFF_NEXT_DIS_DATE NUMBER(1) DEFAULT 0;
ALTER TABLE LOAN_ENTRY_POSTING_RULE ADD AFF_DATE_LAST_PREM NUMBER(1) DEFAULT 0;
ALTER TABLE LOAN_ENTRY_POSTING_RULE ADD AFF_DIS_HISTORY NUMBER(1) DEFAULT 0;
ALTER TABLE LOAN_ENTRY_POSTING_RULE ADD AFF_NEXT_DIS_DUE NUMBER(1) DEFAULT 0;



update loan_entry_posting_rule set AFFECTS_DATE_LAST_ACTIVITY=1
,AFFECTS_LAST_PYMNT_AMOUNT=1,AFFECTS_LAST_TRAN_AMOUNT=1,AFFECTS_DTNXTDUBFRPSTNG=1
,AFF_NEXT_DIS_DATE=1,AFF_DATE_LAST_PREM=1,AFF_DIS_HISTORY=1,AFF_NEXT_DIS_DUE=1 where posting_rule_id=8840;


update loan_entry_type set REVERSAL_ENTRY_TYPE_ID=8840 WHERE ENTRY_TYPE_ID=8840;

insert into loan_event_entry_type_link (event_type_id,entry_type_id) values (40,8840);


update   BILLING_BUCKET set EXTENDED=0  where EXTENDED  is  null ;


ALTER TABLE LOAN_ENTRY_POSTING_RULE ADD AFF_POLICY_EXPIRATION NUMBER(1) DEFAULT 0;

update loan_entry_posting_rule set AFF_POLICY_EXPIRATION=1 where posting_rule_id=8840;

alter table BILLING_BUCKET   modify EXTENDED number(1) default 0;

update LOAN_EVENT_TYPE set EVENT_GROUP=null where EVENT_TYPE_ID in (40,240);

update billing_bucket set EXTENDED=0 where EXTENDED is null;

update IPS_LOAN_EVENT_TYPE set BSV_EVENT_TYPE_ID=701110 where TRAN_CODE=638 and ACCOUNT_TYPE_ID=110;

alter table loan_account_event add (ESCROW_DETAIL_ID NUMBER (25));

delete from ENTRY_TYPE where
ACCOUNT_CATEGORY =2
and UNIQUE_ID not in (
select et.UNIQUE_ID from LOAN_ENTRY_TYPE let, ENTRY_TYPE et where
et.UNIQUE_ID=let.ENTRY_TYPE_ID);

update LOAN_ENTRY_TYPE set ENTRY_NAME=8112
where ENTRY_TYPE_ID=9112;

update LOAN_ENTRY_TYPE set ENTRY_NAME=8841
where ENTRY_TYPE_ID=9941;

delete from LOAN_ENTRY_TYPE where ENTRY_TYPE_ID=9940;
delete from ENTRY_TYPE where UNIQUE_ID=9940 and ACCOUNT_CATEGORY=2;


alter table EXTENSION_NEW modify  EXT_INTEREST_PAID_LTD number(22,2);
alter table EXTENSION_NEW modify  EXT_INTEREST_PAID_YTD number(22,2);

update LOAN_EVENT_TYPE set EVENT_GROUP=0 where EVENT_TYPE_ID=40; 
update LOAN_EVENT_TYPE set EVENT_GROUP=1 where EVENT_TYPE_ID=240;

delete from LOAN_EVENT_ENTRY_TYPE_LINK where EVENT_TYPE_ID=121 and ENTRY_TYPE_ID=1902  ;
delete from LOAN_EVENT_ENTRY_TYPE_LINK where EVENT_TYPE_ID=121 and ENTRY_TYPE_ID=1903  ;
delete from LOAN_EVENT_ENTRY_TYPE_LINK where EVENT_TYPE_ID=121 and ENTRY_TYPE_ID=1904  ;
delete from LOAN_EVENT_ENTRY_TYPE_LINK where EVENT_TYPE_ID=121 and ENTRY_TYPE_ID=1905  ;
delete from LOAN_EVENT_ENTRY_TYPE_LINK where EVENT_TYPE_ID=121 and ENTRY_TYPE_ID=1906  ;
delete from LOAN_EVENT_ENTRY_TYPE_LINK where EVENT_TYPE_ID=121 and ENTRY_TYPE_ID=1907  ;
delete from LOAN_EVENT_ENTRY_TYPE_LINK where EVENT_TYPE_ID=121 and ENTRY_TYPE_ID=1909  ;
delete from LOAN_EVENT_ENTRY_TYPE_LINK where EVENT_TYPE_ID=121 and ENTRY_TYPE_ID=1923 ;
delete from LOAN_EVENT_ENTRY_TYPE_LINK where EVENT_TYPE_ID=121 and ENTRY_TYPE_ID=1932  ;
delete from LOAN_EVENT_ENTRY_TYPE_LINK where EVENT_TYPE_ID=121 and ENTRY_TYPE_ID=1933  ;

insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (121,1902 )  ;
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (121,1903 )  ;
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (121,1904 )  ;
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (121,1905 )  ;
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (121,1906 )  ;
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (121,1907 )  ;
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (121,1909 )  ;
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (121,1923 )  ;
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (121,1932 )  ;
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (121,1933 )  ;


-- End Day Escrow Change Date Function
UPDATE LOAN_ENTRY_POSTING_RULE SET AFFECTS_SCH_PAYMENT_AMOUNT=1 WHERE POSTING_RULE_ID=9999;


update LOAN_EVENT_TYPE set POSTING_ORDER=-1 where EVENT_TYPE_ID=99;

update BSV_LOAN_EVENT_TYPE set EVENT_TYPE_ID='34' where UNIQUE_ID=702;

update LOAN_ENTRY_POSTING_RULE set AFFECTS_BILL=1 where POSTING_RULE_ID=8816;

DELETE FROM LOAN_EVENT_ENTRY_TYPE_LINK WHERE EVENT_TYPE_ID=110 AND ENTRY_TYPE_ID=1909;
DELETE FROM LOAN_EVENT_ENTRY_TYPE_LINK WHERE EVENT_TYPE_ID=111 AND ENTRY_TYPE_ID=1909;
DELETE FROM LOAN_EVENT_ENTRY_TYPE_LINK WHERE EVENT_TYPE_ID=15 AND ENTRY_TYPE_ID=1909;
insert into LOAN_EVENT_ENTRY_TYPE_LINK(EVENT_TYPE_ID, ENTRY_TYPE_ID) values(110, 1909);
insert into LOAN_EVENT_ENTRY_TYPE_LINK(EVENT_TYPE_ID, ENTRY_TYPE_ID) values(111, 1909);
insert into LOAN_EVENT_ENTRY_TYPE_LINK(EVENT_TYPE_ID, ENTRY_TYPE_ID) values(15, 1909);

UPDATE LOAN_ENTRY_POSTING_RULE SET AFFECTS_SCH_PAYMENT_AMOUNT=1 WHERE POSTING_RULE_ID=9999;

UPDATE LOAN_ENTRY_POSTING_RULE  SET AFFECTS_LAST_CURT_AMOUNT=1  where POSTING_RULE_ID in (8882, 8111) ;





