CREATE OR REPLACE VIEW LOAN_ACCOUNT_VW
AS SELECT
	A.ACCOUNT_NO,
	A.INSTITUTION_ID,
	A.PRODUCT_ID,
	A.ACCOUNT_CATEGORY,
	A.ACCOUNT_TYPE_ID,
	A.BUSINESS_DATE,
	A.DATE_OPENED,
	A.CREATION_DATE,
	LA."ACCOUNT_ID",
	LA."CUSTOMER_ID",
	LA."NEXT_PAYMENT_DUE_DATE",
	LA."SCHEDULED_PAYMENT_DATE",
	LA."NEXT_SUBSIDY_AMOUNT",
	LA."PRINCIPLE_BALANCE",
	LA."ACCRUED_INTEREST",
	LA."UNAPPLIED_FUNDS",
	LA."LOSS_DRAFT_FUNDS",
	LA."LATE_FEES_DUE",
	LA."OTHER_FEES_DUE",
	LA."LOAN_STATUS",	
	LA."LAST_MAINTENANCE_DATE",
	LA."CLOSED_DATE",
	LA."OPENING_BRANCH",
	LA."PREVIOUS_OFFICER",
	LA."PAYMENTS_MADE",	
	LA."SPECIAL_MAILING_INSTRUCTIONS",
	LA."CENSUS_TRACK",
	LA."ORDER_COUPON_BOOK_NOW",
	LA."CONTINUES_ORDER_OF_COUPON_BOOK",
	LA."AMORTIZED_BALANCE",
	LA."LAST_ADDL_PRINCIPAL_DATE",
	LA."LAST_ADDL_PRINCIPAL_AMOUNT",
	LA."INTEREST_RATE_TYPE",
	LA."ACCELERATED_RATE_AT_MATURITY",
	LA."GRACE_DAYS_AT_MATURITY",	
	LA."ESCROW_ACCOUNT_ID",
	LA."NON_ACCRUAL",
	LA."ORIGINAL_MATURITY_DATE",
	LA."APPROVED_LIMIT",
	LA."SECONDARY_ACCRUED",
	LA."PARTY_ID",	
	LA."COMBINED_STATEMENT",
	LA."PARTIAL_PAYMENT",
	LA."INTEREST_PAID_YTD",
	LA."INTEREST_PAID_PYTD",
	LA."INTEREST_PAID_LTD",
	LA."LATE_FEES_PAID_YTD",
	LA."LATE_FEES_PAID_PYTD",
	LA."LATE_FEES_PAID_LTD",
	LA."POINTS_PAID_YTD",
	LA."POINTS_PAID_PYTD",
	LA."POINTS_PAID_LTD",
	LA."TAXES_PAID_YTD",
	LA."TAXES_PAID_PYTD",
	LA."TAXES_PAID_LTD",
	LA."ORIGINATION_FEES_YTD",
	LA."ORIGINATION_FEES_PYTD",
	LA."ORIGINATION_FEES_LTD",
	LA."ESCROW_INT_PAID_YTD",
	LA."ESCROW_INT_PAID_PYTD",
	LA."ESCROW_INT_PAID_LTD",
	LA."POINTS_PAID_BY_BORROWER",
	LA."SUBSIDIES_PAID_YTD",	
	LA."CLASS_CODE",
	LA."LAST_PAYMENT_DATE",
	LA."LATE_CHRG_YTD",
	LA."AMT_LC_WAIVED",
	LA."WAIVE_LATE_CHARGE",
	LA."SCHEDULED_PAYMENT_DUE_DATE",
	LA."EMPLOYEE_CODE",
	LA."HOLD4_CODE",
	LA."INTEREST_PAID_TO_DATE",
	LA."MFHASERVFEE",	
	LA."MLOTNBR",
	LA."MPLATNBR",
	LA."MPAGENBR",
	LA."ACCRUED_INTEREST_NET",
	LA."INTEREST_DUE",
	LA."INTEREST_PAST_DUE",
	LA."PER_DIEM",
	LA."DATE_LAST_ACTIVITY",
	LA."CONTRACT_ID",
	LA."LAST_TRANSACTION_DATE",
	LA."PAST_DUE_UNUSEDLINE_COMMIT_FEE",
	LA."PRINCIPAL_DUE",
	LA."FUTURE_PAYMENT_COUNT",
	LA."PRINCIPAL_PAID_TO_DATE",
	LA."WAIVED_LATE_CHARGE",
	LA."UNUSED_LINE_COMMITMENT",
	LA."INVESTOR_NUMBER",
	LA."LAST_STATEMENT_DATE",
	LA."PAY_OUT_CODE",
	LA."NO_RETURNED_CHECKS",
	LA."CURRENT_MONTH_EARNINGS",
	LA."LIFE_INSURANCE_PREMIUM",
	LA."SUBSIDY_BALANCE",
	LA."CREDIT_LIFE_INDICATOR",
	LA."LAST_REVIEW_DATE",
	LA."REVIEW_DATE_FREQ",
	LA."INTEREST_PAID_MTD",
	LA."DATE_PREVIOUS_ACTIVITY",
	LA."FINANCIAL_STMT_EXP_DATE",
	LA."FINANCING_STMT_EXP_DATE",
	LA."PAST_DUE_CHARGE1_AMT",
	LA."PAST_DUE_CHARGE2_AMT",
	LA."PAST_DUE_LINE_COMMIT_FEE",
	LA."PAST_DUE_DEALER_INTEREST",
	LA."PAID_LOAN_CLOCK",
	LA."COUPON_THRU_DATE",
	LA."LAST_STATEMENT_BAL",
	LA."PRE_STATEMENT_BAL",
	LA."PRE_STATEMENT_DATE",
	LA."ACCRUED_CHARGE1_AMT",
	LA."ACCRUED_CHARGE2_AMT",
	LA."CHARGE_OFF_AMOUNT",
	LA."PRE_PAID_AMOUNT",
	LA."DAILY_CHARG1_ACCRUAL",
	LA."DAILY_CHARG2_ACCRUAL",
	LA."DAILY_UNUSED_LINE_COMMIT_FEE",
	LA."PAST_PRINCIPLE_DUE",
	LA."REVIEWER",
	LA."ENTERED_BY" ,
	LA."PREVIOUS_OFFICER_CODE",
	LA."LAST_CURT_AMOUNT",
	LA."LAST_CURT_DATE",
	A."LAST_PROCESSED_DATE" 
FROM
	ACCOUNT A,
	LOAN_ACCOUNT LA 
WHERE
	A.ACCOUNT_ID=LA.ACCOUNT_ID;


alter table loan_account
modify loan_status varchar2(30) null;

alter table loan_account
modify per_diem number(20,5) default 0;

alter table loan_account
modify principle_balance number(20,5) default 0;

alter table loan_account
modify accrued_interest number(20,5) default 0;

--update PROPERTY_DEFINITION set VALID_VALUES = 'java.lang.Integer:{default={1=Anniversary Date,0=First Payment Date,2=Insurance Due Date}}' where entity_type_definition_id = 41302 and PROPERTY_NAME = 'EarningDate';
--update property_definition set category = 'UC' where entity_type_definition_id = 521 and PROPERTY_NAME = 'RemainingTerm';
--update property_definition set category = 'UC' where entity_type_definition_id = 41302 and PROPERTY_NAME = 'RemainingTerm';

UPDATE LOAN_ACCOUNT SET LOSS_DRAFT_FUNDS=0.00 WHERE LOSS_DRAFT_FUNDS IS NULL;

alter table loan_account modify LOSS_DRAFT_FUNDS number(20,5) default 0;

