CREATE OR REPLACE VIEW AUF_BALANCE_DETAILS_VW (
 "AUF_UNIQUE_ID", "ACCOUNT_NUMBER","AVAILABLE_BALANCE", "AVAILABLE_BALANCE_IND", "OVER_DRAFT_BALANCE", "ACCOUNT_STATUS", "OVER_DRAFT_BALANCE_IND", "RESTRICT_BALANCE", "RESTRICT_BALANCE_IND", "BATCH_ACCOUNT_TYPE", "IS_ACCOUNT_VALID")
AS
SELECT 
		dac.ACCOUNT_NO AUF_UNIQUE_ID,
		dac.ACCOUNT_NO ACCOUNT_NUMBER,
		decode(h.total_hold_amt,null,dac.AVAILABLE_BALANCE,dac.AVAILABLE_BALANCE-h.total_hold_amt) AVAILABLE_BALANCE,
		decode(dac.AVAILABLE_BALANCE, NULL,'N','Y') AVAILABLE_BALANCE_IND,
		0 OVER_DRAFT_BALANCE,
		'0' ACCOUNT_STATUS,
		'N' OVER_DRAFT_BALANCE_IND,
		0 RESTRICT_BALANCE,
		'N' RESTRICT_BALANCE_IND,
		atl.ACCOUNT_TYPE_ID BATCH_ACCOUNT_TYPE,
			case when dac.STATUS_CODE in(5,6,98,99) then 0
	              else 1 end IS_ACCOUNT_VALID
             
          
		
	FROM
		 DEPOSIT_ACCOUNT_VW dac,
                 (select distinct PRIMARY_ACCOUNT_NUMBER,max(SUBSCRIPTION_NUMBER) SUBSCRIPTION_NUMBER
                   from DEBITCARD_SUBSCRIPTION group by PRIMARY_ACCOUNT_NUMBER) iso ,
                 ACCOUNT_TYPE_LOOKUP atl,
                (select dai.ACCOUNT_ID,sum(hp.HOLD_AMOUNT) total_hold_amt from DEPOSIT_ACCOUNT_INSTRUCTION dai,hold_payment hp
                  where dai.INSTRUCTION_ID=hp.INSTRUCTION_ID
                 and dai.EFFECTIVE_EXPIRE_DATE > sysdate
                 group by dai.account_id) h
	WHERE
               dac.ACCOUNT_NO=iso.PRIMARY_ACCOUNT_NUMBER and 
               atl.ACCOUNT_TYPE_ID = dac.ACCOUNT_TYPE_ID and
               dac.ACCOUNT_ID=h.ACCOUNT_ID(+) and
               dac.ACCOUNT_TYPE_ID in(10,21);

