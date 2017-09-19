---Added Notification Comment
ALTER TABLE backup_withholding ADD notification_comment VARCHAR2(1000);
--Added Views for Back upwithholding reports and views

		 

ALTER TABLE BACKUP_WITHHOLDING ADD BKP_WITHHOLDING_ENTRY_DATE DATE;

alter table interest_codes modify TAX_WITH_HOLD_PERCENTAGE NUMBER(10, 4)  DEFAULT 0.28;


ALTER TABLE backup_withholding_aud ADD (notification_comment VARCHAR2(1000),notificationcomment_mod VARCHAR2(1000));


---Added for Alerts of Backupwithholding by sarala

CREATE TABLE Bck_Withholding_Ackn_History
(
	BACKUP_UNIQUE_ID NUMBER(5),
	Customer_Id varchar2(20),
	Who_Read varchar2(10),
	mode_value varchar2(40)
);


CREATE SEQUENCE Bck_Ackn_History_Id_SEQ
    INCREMENT BY 1
    START WITH 101
    NOMAXVALUE
    NOMINVALUE
    NOCYCLE
    ORDER;

    -- Added user name in back up withholding

ALTER TABLE BACKUP_WITHHOLDING  ADD USER_NAME varchar2(50);


--- Report and Notice veiws altered

CREATE OR REPLACE FORCE VIEW "TOTAL_BKP_ACC_REP_VW" AS

SELECT distinct(bh.CUSTOMER_ID),bh.NOTIFICATION_TYPE,dv.MTD_BKP_WITHHOLDING,dv.YTD_BKP_WITHHOLDING,dv.BRANCH_ID,
B.BRANCH_NAME,decode(p.FIRST_NAME,null,o.business_name,p.first_name||p.middle_name||p.last_name) first_name,
d.ACCOUNT_NO,parv.RESPONSIBILITY_TYPE,dv.LAST_REMITTED_AMT,d.ACCOUNT_TYPE_ID,dv.account_id,i.institution_id,
i.institution_name,pid.party_registerd_id,bh.TAX_YEAR,bh.NOTIFICATION_DATE,bh.NOTICE_PRINT_DATE,dv.UNREMITTED_BKP_WTHOLD_AMT,
bh.STATUS,bh.BKP_WITHHOLDING_ENTRY_DATE,bh.USER_NAME


from deposit_account dv,
DEPOSIT_ACCOUNT_VW d,
party_account_role_vw parv,
PARTY_INSTITUTION_ASSOCIATION pia,
BACKUP_WITHHOLDING bh,

BRANCH B,(select * from party_registered_ids pid where type in ('SSN','TIN')) pid,
person p,organization o,institution i

where dv.account_id=parv.ACCOUNT_ID and d.INSTITUTION_ID = i.INSTITUTION_ID and parv.PARTY_ID = pia.party_id

and bh.customer_id = pia.UNIQUE_ASSOCIATION_ID
and dv.BRANCH_ID=B.UNIQUE_ID
and d.ACCOUNT_ID=dv.ACCOUNT_ID and parv.party_id=pid.party_id and p.party_id(+)=parv.party_id and o.party_id(+)=parv.party_id
and parv.RESPONSIBILITY_TYPE in ('9')
and d.ACCOUNT_CATEGORY in ('1')
and d.STATUS_CODE in ('0','1','2','3')
and nvl(d.Interest_code,'3') not in ('0','1') 
and TRUNC(bh.BKP_WITHHOLDING_ENTRY_DATE) >=TRUNC(i.LAST_PROCESSED_DATE) 
and TRUNC(bh.BKP_WITHHOLDING_ENTRY_DATE) < TRUNC(i.NEXT_PROCESSING_DATE) 


 
order by dv.BRANCH_ID asc,dv.UNREMITTED_BKP_WTHOLD_AMT asc;


	
CREATE OR REPLACE FORCE VIEW "REMITTANCE_DAILY_REPORTS_VIEW" AS

SELECT distinct(bh.CUSTOMER_ID),dv.MTD_BKP_WITHHOLDING,dv.YTD_BKP_WITHHOLDING,dv.BRANCH_ID,
B.BRANCH_NAME,decode(p.FIRST_NAME,null,o.business_name,p.first_name||p.middle_name||p.last_name) first_name,
d.ACCOUNT_NO,parv.RESPONSIBILITY_TYPE,dv.LAST_REMITTED_AMT,d.ACCOUNT_TYPE_ID,dv.account_id,i.institution_id,
i.institution_name,pid.party_registerd_id,bh.NOTIFICATION_DATE,bh.NOTICE_PRINT_DATE,dv.UNREMITTED_BKP_WTHOLD_AMT,
bh.STATUS,bh.BKP_WITHHOLDING_ENTRY_DATE,bh.USER_NAME


from deposit_account dv,
DEPOSIT_ACCOUNT_VW d,
party_account_role_vw parv,
PARTY_INSTITUTION_ASSOCIATION pia,
BACKUP_WITHHOLDING bh,

BRANCH B,(select * from party_registered_ids pid where type in ('SSN','TIN')) pid,
person p,organization o,institution i

where dv.account_id=parv.ACCOUNT_ID and d.INSTITUTION_ID = i.INSTITUTION_ID and parv.PARTY_ID = pia.party_id

and bh.customer_id = pia.UNIQUE_ASSOCIATION_ID
and dv.BRANCH_ID=B.UNIQUE_ID
and d.ACCOUNT_ID=dv.ACCOUNT_ID and parv.party_id=pid.party_id and p.party_id(+)=parv.party_id and o.party_id(+)=parv.party_id
and parv.RESPONSIBILITY_TYPE in ('9')
and d.ACCOUNT_CATEGORY in ('1')
and d.STATUS_CODE in ('0','1','2','3')
and nvl(d.Interest_code,'3') not in ('0','1') 
and TRUNC(bh.BKP_WITHHOLDING_ENTRY_DATE) >=TRUNC(i.LAST_PROCESSED_DATE) 
and TRUNC(bh.BKP_WITHHOLDING_ENTRY_DATE) < TRUNC(i.NEXT_PROCESSING_DATE) 
and dv.LAST_REMITTED_AMT >0

 
order by dv.BRANCH_ID asc,dv.LAST_REMITTED_AMT asc;


alter table Bck_Withholding_Ackn_History add account_number varchar2(20);

alter table Bck_Withholding_Ackn_History rename column mode_value to mode_value_OLD;

alter table Bck_Withholding_Ackn_History add mode_value varchar2(100);

update Bck_Withholding_Ackn_History set mode_value = mode_value_OLD;

alter table Bck_Withholding_Ackn_History drop column mode_value_OLD;

alter table Bck_Withholding_Ackn_History rename column who_read to who_read_OLD;

alter table Bck_Withholding_Ackn_History add who_read varchar2(100);

update Bck_Withholding_Ackn_History set who_read = who_read_OLD;

alter table Bck_Withholding_Ackn_History drop column who_read_OLD;

---View For Notices and Reports updated

 --Notices View
 
CREATE OR REPLACE FORCE VIEW "BKP_NOTICE_REPORTS_VW" AS

SELECT distinct(bh.CUSTOMER_ID),bh.NOTIFICATION_TYPE,dv.MTD_BKP_WITHHOLDING,dv.YTD_BKP_WITHHOLDING,dv.BRANCH_ID,
B.BRANCH_NAME,decode(p.FIRST_NAME,null,o.business_name,p.first_name||p.middle_name||p.last_name) first_name,
d.ACCOUNT_NO,parv.RESPONSIBILITY_TYPE,dv.LAST_REMITTED_AMT,d.ACCOUNT_TYPE_ID,dv.account_id,i.institution_id,
i.institution_name,pid.party_registerd_id,bh.TAX_YEAR,bh.NOTIFICATION_DATE,bh.NOTICE_PRINT_DATE,dv.UNREMITTED_BKP_WTHOLD_AMT,
dv.BKP_WITHHOLDING_STATUS,bh.BKP_WITHHOLDING_ENTRY_DATE


from deposit_account dv,
DEPOSIT_ACCOUNT_VW d,
party_account_role_vw parv,
PARTY_INSTITUTION_ASSOCIATION pia,
BACKUP_WITHHOLDING bh,


BRANCH B,(select * from party_registered_ids pid where type in ('SSN','TIN')) pid,
person p,organization o,institution i

where dv.account_id=parv.ACCOUNT_ID and d.INSTITUTION_ID = i.INSTITUTION_ID and parv.PARTY_ID = pia.party_id

and bh.customer_id = pia.UNIQUE_ASSOCIATION_ID
and dv.BRANCH_ID=B.UNIQUE_ID
and d.ACCOUNT_ID=dv.ACCOUNT_ID and parv.party_id=pid.party_id and p.party_id(+)=parv.party_id and o.party_id(+)=parv.party_id
and parv.RESPONSIBILITY_TYPE in ('9')
and d.ACCOUNT_CATEGORY in ('1')
and d.STATUS_CODE in ('0','1','2','3')
and nvl(d.Interest_code,'3') not in ('0','1') 

 
order by dv.BRANCH_ID asc;


--Remittance Report
	
CREATE OR REPLACE FORCE VIEW "REMITTANCE_DAILY_REPORTS_VIEW" AS

SELECT distinct(bh.CUSTOMER_ID),dv.MTD_BKP_WITHHOLDING,dv.YTD_BKP_WITHHOLDING,dv.BRANCH_ID,
B.BRANCH_NAME,decode(p.FIRST_NAME,null,o.business_name,p.first_name||p.middle_name||p.last_name) first_name,
d.ACCOUNT_NO,parv.RESPONSIBILITY_TYPE,dv.LAST_REMITTED_AMT,d.ACCOUNT_TYPE_ID,dv.account_id,i.institution_id,
i.institution_name,pid.party_registerd_id,bh.NOTIFICATION_DATE,bh.NOTICE_PRINT_DATE,dv.UNREMITTED_BKP_WTHOLD_AMT,
bh.STATUS,bh.BKP_WITHHOLDING_ENTRY_DATE,bh.USER_NAME


from deposit_account dv,
DEPOSIT_ACCOUNT_VW d,
party_account_role_vw parv,
PARTY_INSTITUTION_ASSOCIATION pia,
BACKUP_WITHHOLDING bh,

BRANCH B,(select * from party_registered_ids pid where type in ('SSN','TIN')) pid,
person p,organization o,institution i

where dv.account_id=parv.ACCOUNT_ID and d.INSTITUTION_ID = i.INSTITUTION_ID and parv.PARTY_ID = pia.party_id

and bh.customer_id = pia.UNIQUE_ASSOCIATION_ID
and dv.BRANCH_ID=B.UNIQUE_ID
and d.ACCOUNT_ID=dv.ACCOUNT_ID and parv.party_id=pid.party_id and p.party_id(+)=parv.party_id and o.party_id(+)=parv.party_id
and parv.RESPONSIBILITY_TYPE in ('9')
and d.ACCOUNT_CATEGORY in ('1')
and d.STATUS_CODE in ('0','1','2','3')
and nvl(d.Interest_code,'3') not in ('0','1') 
and TRUNC(bh.BKP_WITHHOLDING_ENTRY_DATE) =TRUNC(i.LAST_PROCESSED_DATE) 
and dv.LAST_REMITTED_AMT >0

 
order by dv.BRANCH_ID asc,dv.LAST_REMITTED_AMT asc;


---Total Accounts View
	
CREATE OR REPLACE FORCE VIEW "TOTAL_BKP_ACC_REP_VW" AS

SELECT distinct(bh.CUSTOMER_ID),bh.NOTIFICATION_TYPE,dv.MTD_BKP_WITHHOLDING,dv.YTD_BKP_WITHHOLDING,dv.BRANCH_ID,
B.BRANCH_NAME,decode(p.FIRST_NAME,null,o.business_name,p.first_name||p.middle_name||p.last_name) first_name,
d.ACCOUNT_NO,parv.RESPONSIBILITY_TYPE,dv.LAST_REMITTED_AMT,d.ACCOUNT_TYPE_ID,dv.account_id,i.institution_id,
i.institution_name,pid.party_registerd_id,bh.TAX_YEAR,bh.NOTIFICATION_DATE,bh.NOTICE_PRINT_DATE,dv.UNREMITTED_BKP_WTHOLD_AMT,
bh.STATUS,bh.BKP_WITHHOLDING_ENTRY_DATE,bh.USER_NAME


from deposit_account dv,
DEPOSIT_ACCOUNT_VW d,
party_account_role_vw parv,
PARTY_INSTITUTION_ASSOCIATION pia,
BACKUP_WITHHOLDING bh,

BRANCH B,(select * from party_registered_ids pid where type in ('SSN','TIN')) pid,
person p,organization o,institution i

where dv.account_id=parv.ACCOUNT_ID and d.INSTITUTION_ID = i.INSTITUTION_ID and parv.PARTY_ID = pia.party_id

and bh.customer_id = pia.UNIQUE_ASSOCIATION_ID
and dv.BRANCH_ID=B.UNIQUE_ID
and d.ACCOUNT_ID=dv.ACCOUNT_ID and parv.party_id=pid.party_id and p.party_id(+)=parv.party_id and o.party_id(+)=parv.party_id
and parv.RESPONSIBILITY_TYPE in ('9')
and d.ACCOUNT_CATEGORY in ('1')
and d.STATUS_CODE in ('0','1','2','3')
and nvl(d.Interest_code,'3') not in ('0','1') 
and TRUNC(bh.BKP_WITHHOLDING_ENTRY_DATE) = TRUNC(i.LAST_PROCESSED_DATE)  
order by dv.BRANCH_ID asc,dv.UNREMITTED_BKP_WTHOLD_AMT asc;
