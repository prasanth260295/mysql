alter table deposit add
	(BACKUP_WITH_HOLDING_AMT NUMBER(10, 4));

alter table deposit_account add
	(BACKUP_WITH_HOLDING NUMBER(1));

alter table interest_codes add
	(TAX_WITH_HOLD_PERCENTAGE NUMBER(10, 4), 
	TAX_WITH_HOLD_CREDIT_TRANCODES NUMBER(10), 
	TAX_WITH_HOLD_DEBIT_TRANCODES NUMBER(10));
	
	
alter table entry_type add(REVERSAL_ENTRY_TYPE_ID NUMBER(20), IS_REVERSAL NUMBER(1));	

update entry_type set IS_REVERSAL = 0 where IS_REVERSAL is null;

alter table entry_type modify (IS_REVERSAL not null);

alter table ledger_posting_parameters 
	rename column AFFECTS_WITHHELD_PTDTAX to AFFECTS_WITHHELD_TAX;