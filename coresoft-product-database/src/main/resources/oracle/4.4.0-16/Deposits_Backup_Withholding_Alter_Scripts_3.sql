	
CREATE OR REPLACE FORCE VIEW "BKP_NOTICE_REPORTS_VW" AS

SELECT distinct(bh.CUSTOMER_ID),bh.NOTIFICATION_TYPE,dv.MTD_BKP_WITHHOLDING,dv.YTD_BKP_WITHHOLDING,dv.BRANCH_ID,
B.BRANCH_NAME,decode(p.FIRST_NAME,null,o.business_name,p.first_name||' '||p.middle_name||' '||p.last_name) first_name,
d.ACCOUNT_NO,parv.RESPONSIBILITY_TYPE,dv.LAST_REMITTED_AMT,d.ACCOUNT_TYPE_ID,dv.account_id,d.institution_id,
i.institution_name,r.region_id,r.region_name,pid.party_registerd_id,bh.TAX_YEAR,bh.NOTIFICATION_DATE,bh.NOTICE_PRINT_DATE,dv.UNREMITTED_BKP_WTHOLD_AMT,
dv.BKP_WITHHOLDING_STATUS,bh.BKP_WITHHOLDING_ENTRY_DATE


from deposit_account dv,
DEPOSIT_ACCOUNT_VW d,
party_account_role_vw parv,
PARTY_INSTITUTION_ASSOCIATION pia,
BACKUP_WITHHOLDING bh,


BRANCH B,(select * from party_registered_ids pid where type in ('SSN','TIN')) pid,
person p,organization o,institution i,Region r

where dv.account_id=parv.ACCOUNT_ID and d.INSTITUTION_ID = i.institution_unique_id  and r.institution_id = i.institution_unique_id  and b.region_id=r.region_unique_id and parv.PARTY_ID = pia.party_id
and bh.customer_id = pia.UNIQUE_ASSOCIATION_ID
and dv.BRANCH_ID=B.UNIQUE_ID
and d.ACCOUNT_ID=dv.ACCOUNT_ID and parv.party_id=pid.party_id and p.party_id(+)=parv.party_id and o.party_id(+)=parv.party_id
and parv.RESPONSIBILITY_TYPE in ('9','6')
and d.ACCOUNT_CATEGORY in ('1')
and d.STATUS_CODE in ('0','1','2','3')
and nvl(d.Interest_code,'3') not in ('0','1') 

 
order by dv.BRANCH_ID asc;