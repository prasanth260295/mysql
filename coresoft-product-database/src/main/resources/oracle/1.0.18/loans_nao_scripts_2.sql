--UPDATE PROPERTY_DEFINITION SET MANDATORY=0,HIDDEN=1,EDITABLE=0 WHERE
--PROPERTY_NAME like 'AccruedToDate';
---- Make Payment adjustment history, payment adjustment to hidden and not mandatory.
--update associate_definition set mandatory= 0 , hidden = 1 where associate_name in ('PaymentAdjustment', 'PaymentAdjustmentHistory');
--
--
---- Updating the Variable Loan Interest making Rate Adjustment as mandatory associate.
--update ASSOCIATE_DEFINITION set MANDATORY = 1 where ASSOCIATE_NAME = 'RateAdjustment' and ENTITY_TYPE_DEFINITION_ID = 702;
--
---- Set valid values for DueDayofMonth.
--update property_definition set valid_values = 'java.lang.Integer:{default={1=01,2=02,3=03,4=04,5=05,6=06,7=07,8=08,9=09,10=10,11=11,12=12,13=13,14=14,15=15,16=16,17=17,18=18,19=19,20=20,21=21,22=22,23=23,24=24,25=25,26=26,27=27,28=28,29=29,30=30,31=31}}' where  property_name like 'DueDayOfMonth';
--
---- Make Escrow Summary lazy
--update associate_definition set lazy= 1 where associate_name like 'EscrowSummary' and entity_type_definition_id = 5003;

CREATE OR REPLACE VIEW LOAN_ACCOUNT_VW ( ACCOUNT_NO, INSTITUTION_ID, PRODUCT_ID, ACCOUNT_CATEGORY, ACCOUNT_TYPE_ID, BUSINESS_DATE, DATE_OPENED, CREATION_DATE, ACCOUNT_ID, CUSTOMER_ID, NOTE_NUMBER, START_DATE, CURRENT_MATURITY_DATE, CURRENT_INTEREST_RATE, INTEREST_BASE_CODE, LINE_OF_CREDIT, NEXT_PAYMENT_DUE_DATE, SCHEDULED_PAYMENT_DATE, NEXT_PRINCIPLE_DUE, NEXT_INTEREST_AMOUNT_DUE, NEXT_ESCROW_DUE, NEXT_SUBSIDY_AMOUNT, PAST_DUE_AMOUNT, APPROVED_LOAN_AMOUNT, AVAILED_LOAN_AMOUNT, PRINCIPLE_BALANCE, ACCRUED_INTEREST, UNAPPLIED_FUNDS, LOSS_DRAFT_FUNDS, LATE_FEES_DUE, OTHER_FEES_DUE, LOAN_STATUS, NEXT_REVIEW_DATE, LAST_MAINTENANCE_DATE, CLOSED_DATE, OPENING_BRANCH, PRIMARY_OFFICER, CALL_REPORT_CODE, EXAMINER_CLASSIFICATION_CODE, PREVIOUS_OFFICER, COLLECTION_OFFICER, REPAYMENT_MODE, APPLY_PAYMENTS_AS_BILLED, FIRST_PAYMENT_DATE, PAYMENTS_SCHEDULED, PAYMENTS_MADE, PRINT_BILLING_NOTICE, PRINT_COUPON_BOOK, PRINT_PAST_DUE_NOTICE, BALLOON_PAYMENT, MINIMUM_INTEREST_CHARGE, SPECIAL_MAILING_INSTRUCTIONS, CENSUS_TRACK, ORDER_COUPON_BOOK_NOW, CONTINUES_ORDER_OF_COUPON_BOOK, LATE_CHARGE_CODE, AMORTIZED_BALANCE, LAST_ADDL_PRINCIPAL_DATE, LAST_ADDL_PRINCIPAL_AMOUNT, INTEREST_RATE_TYPE, ACCELERATED_RATE_AT_MATURITY, GRACE_DAYS_AT_MATURITY, LINE_OF_CREDIT_ID, ESCROW_ACCOUNT_ID, NON_ACCRUAL, ORIGINAL_MATURITY_DATE, APPROVED_LIMIT, SECONDARY_ACCRUED, PREPAYMENT_PENALTY_CODE, PREPAYMENT_PENALTY, COMMENTS, PARTY_ID, LOAN_TERM, FREQUENCY_PRINCIPAL, FREQUENCY_INTEREST, ANNUAL_PERCENTAGE_RATE, COMBINED_STATEMENT, PARTIAL_PAYMENT, INTEREST_PAID_YTD, INTEREST_PAID_PYTD, INTEREST_PAID_LTD, LATE_FEES_PAID_YTD, LATE_FEES_PAID_PYTD, LATE_FEES_PAID_LTD, POINTS_PAID_YTD, POINTS_PAID_PYTD, POINTS_PAID_LTD, TAXES_PAID_YTD, TAXES_PAID_PYTD, TAXES_PAID_LTD, ORIGINATION_FEES_YTD, ORIGINATION_FEES_PYTD, ORIGINATION_FEES_LTD, ESCROW_INT_PAID_YTD, ESCROW_INT_PAID_PYTD, ESCROW_INT_PAID_LTD, POINTS_PAID_BY_BORROWER, SUBSIDIES_PAID_YTD, PROPERTY_OR_COLLATERAL, LIFE_INSURANCE_REBATE, ACC_INSURANCE_REBATE, LATE_CHRG_INDICATOR, AUTO_DRAFT, INT_BILLING_DATE, PRINCIPAL_BILLING_DATE, CLASS_CODE, LAST_PAYMENT_DATE, IS_AMORTIZED, DAYS_IN_A_YEAR, PERCENTAGE_PAYMENT_AMOUNT, MAXIMUM_AMOUNT, MINIMUM_AMOUNT, MAX_LATE_CHARGE_PER_YEAR, GRACE_PERIOD, LATE_CHRG_YTD, AMT_LC_WAIVED, WAIVE_LATE_CHARGE, LATE_CHARGE_FIXED_AMT, LOAN_TYPE_ID, SCHEDULED_PAYMENT_DUE_DATE, EMPLOYEE_CODE, HOLD4_CODE, INTEREST_PAID_TO_DATE, MFHASERVFEE, PRINCIPAL_INTEREST_PAYMENT, MLOTNBR, MPLATNBR, MPAGENBR, LOAN_PURPOSE_CODE, NON_ESCROW_DUE, NON_ESCROW_BALANCE, ACCRUED_INTEREST_NET, ACCRUED_TO_DATE, INTEREST_DUE, INTEREST_PAST_DUE, CHARGE_DISC1, CHARGE_DISC2, CHARGE_CODE1, CHARGE_CODE2, PYMT_DUE_DAY, PER_DIEM, DATE_LAST_ACTIVITY, BLOCK_ID, CONTRACT_ID, LAST_TRANSACTION_DATE, PAST_DUE_UNUSEDLINE_COMMIT_FEE, BILLED_UNUSEDLINE_C0MMIT_FEE, PRINCIPAL_DUE, FUTURE_PAYMENT_COUNT, PRINCIPAL_PAID_TO_DATE, NEXT_DISBURSEMENT_DATE, WAIVED_LATE_CHARGE, UNUSED_LINE_COMMITMENT, INVESTOR_NUMBER, LAST_STATEMENT_DATE, PAY_OUT_CODE, NO_RETURNED_CHECKS, DEALER_NUMBER, CURRENT_MONTH_EARNINGS, LIFE_INSURANCE_PREMIUM, CREDIT_LIFE_TERM, ACC_INSURANCE_TERM, SUBSIDY_BALANCE, CREDIT_LIFE_INDICATOR, LAST_REVIEW_DATE, REVIEW_DATE_FREQ, INTEREST_PAID_MTD, DATE_PREVIOUS_ACTIVITY, UNUSED_LINE_COMMITMENT_AMT, FINANCIAL_STMT_EXP_DATE, FINANCING_STMT_EXP_DATE, PRINCIPAL_BILLED_AMT, INTEREST_BILLED_AMT, BILLED_CHARGE1_AMT, BILLED_CHARGE2_AMT, BILL_STATUS_CODE, BILLED_LINE_C0MMITMENT_FEE, BILLED_DEALER_INTEREST, PAST_DUE_CHARGE1_AMT, PAST_DUE_CHARGE2_AMT, PAST_DUE_LINE_COMMIT_FEE, PAST_DUE_DEALER_INTEREST, PAID_LOAN_CLOCK, ESCROW_PAST_DUE, NON_ESCROW_PAST_DUE, COUPON_STAT_DATE, COUPON_THRU_DATE, COUPON_FLAG, FIXED_PAYMENT_CODE, BEG_ESCROW_BAL, DEPOSIT_TO_ESCROW, ESCROW_DISBURSEMETS, ESCROW_DISBURSEMENTS_IRS, LAST_STATEMENT_BAL, PRE_STATEMENT_BAL, PRE_STATEMENT_DATE, ACCRUED_CHARGE1_AMT, ACCRUED_CHARGE2_AMT, CHARGE_OFF_AMOUNT, PRE_PAID_AMOUNT, BILLED_ESCROW_DUE, DAILY_DEALER_INT_ACCRUAL, DAILY_CHARG1_ACCRUAL, DAILY_CHARG2_ACCRUAL, DAILY_UNUSED_LINE_COMMIT_FEE, PAST_PRINCIPLE_DUE, REVIEWER, ENTERED_BY,PREVIOUS_OFFICER_CODE,COLLECTION_OFFICER_CODE,LAST_CURT_AMOUNT,LAST_CURT_DATE)
AS
SELECT A.ACCOUNT_NO, A.INSTITUTION_ID, A.PRODUCT_ID, A.ACCOUNT_CATEGORY, A.ACCOUNT_TYPE_ID, A.BUSINESS_DATE, A.DATE_OPENED, A.CREATION_DATE, LA."ACCOUNT_ID", LA."CUSTOMER_ID", LA."NOTE_NUMBER", LA."START_DATE", LA."CURRENT_MATURITY_DATE", LA."CURRENT_INTEREST_RATE", LA."INTEREST_BASE_CODE", LA."LINE_OF_CREDIT", LA."NEXT_PAYMENT_DUE_DATE", LA."SCHEDULED_PAYMENT_DATE", LA."NEXT_PRINCIPLE_DUE", LA."NEXT_INTEREST_AMOUNT_DUE", LA."NEXT_ESCROW_DUE", LA."NEXT_SUBSIDY_AMOUNT", LA."PAST_DUE_AMOUNT", LA."APPROVED_LOAN_AMOUNT", LA."AVAILED_LOAN_AMOUNT", LA."PRINCIPLE_BALANCE", LA."ACCRUED_INTEREST", LA."UNAPPLIED_FUNDS", LA."LOSS_DRAFT_FUNDS", LA."LATE_FEES_DUE", LA."OTHER_FEES_DUE", LA."LOAN_STATUS", LA."NEXT_REVIEW_DATE", LA."LAST_MAINTENANCE_DATE", LA."CLOSED_DATE", LA."OPENING_BRANCH", LA."PRIMARY_OFFICER", LA."CALL_REPORT_CODE", LA."EXAMINER_CLASSIFICATION_CODE", LA."PREVIOUS_OFFICER", LA."COLLECTION_OFFICER", LA."REPAYMENT_MODE", LA."APPLY_PAYMENTS_AS_BILLED", LA."FIRST_PAYMENT_DATE", LA."PAYMENTS_SCHEDULED", LA."PAYMENTS_MADE", LA."PRINT_BILLING_NOTICE", LA."PRINT_COUPON_BOOK", LA."PRINT_PAST_DUE_NOTICE", LA."BALLOON_PAYMENT", LA."MINIMUM_INTEREST_CHARGE", LA."SPECIAL_MAILING_INSTRUCTIONS", LA."CENSUS_TRACK", LA."ORDER_COUPON_BOOK_NOW", LA."CONTINUES_ORDER_OF_COUPON_BOOK", LA."LATE_CHARGE_CODE", LA."AMORTIZED_BALANCE", LA."LAST_ADDL_PRINCIPAL_DATE", LA."LAST_ADDL_PRINCIPAL_AMOUNT", LA."INTEREST_RATE_TYPE", LA."ACCELERATED_RATE_AT_MATURITY", LA."GRACE_DAYS_AT_MATURITY", LA."LINE_OF_CREDIT_ID", LA."ESCROW_ACCOUNT_ID", LA."NON_ACCRUAL", LA."ORIGINAL_MATURITY_DATE", LA."APPROVED_LIMIT", LA."SECONDARY_ACCRUED", LA."PREPAYMENT_PENALTY_CODE", LA."PREPAYMENT_PENALTY", LA."COMMENTS", LA."PARTY_ID", LA."LOAN_TERM", LA."FREQUENCY_PRINCIPAL", LA."FREQUENCY_INTEREST", LA."ANNUAL_PERCENTAGE_RATE", LA."COMBINED_STATEMENT", LA."PARTIAL_PAYMENT", LA."INTEREST_PAID_YTD", LA."INTEREST_PAID_PYTD", LA."INTEREST_PAID_LTD", LA."LATE_FEES_PAID_YTD", LA."LATE_FEES_PAID_PYTD", LA."LATE_FEES_PAID_LTD", LA."POINTS_PAID_YTD", LA."POINTS_PAID_PYTD", LA."POINTS_PAID_LTD", LA."TAXES_PAID_YTD", LA."TAXES_PAID_PYTD", LA."TAXES_PAID_LTD", LA."ORIGINATION_FEES_YTD", LA."ORIGINATION_FEES_PYTD", LA."ORIGINATION_FEES_LTD", LA."ESCROW_INT_PAID_YTD", LA."ESCROW_INT_PAID_PYTD", LA."ESCROW_INT_PAID_LTD", LA."POINTS_PAID_BY_BORROWER", LA."SUBSIDIES_PAID_YTD", LA."PROPERTY_OR_COLLATERAL", LA."LIFE_INSURANCE_REBATE", LA."ACC_INSURANCE_REBATE", LA."LATE_CHRG_INDICATOR", LA."AUTO_DRAFT", LA."INT_BILLING_DATE", LA."PRINCIPAL_BILLING_DATE", LA."CLASS_CODE", LA."LAST_PAYMENT_DATE", LA."IS_AMORTIZED", LA."DAYS_IN_A_YEAR", LA."PERCENTAGE_PAYMENT_AMOUNT", LA."MAXIMUM_AMOUNT", LA."MINIMUM_AMOUNT", LA."MAX_LATE_CHARGE_PER_YEAR", LA."GRACE_PERIOD", LA."LATE_CHRG_YTD", LA."AMT_LC_WAIVED", LA."WAIVE_LATE_CHARGE", LA."LATE_CHARGE_FIXED_AMT", LA."LOAN_TYPE_ID", LA."SCHEDULED_PAYMENT_DUE_DATE", LA."EMPLOYEE_CODE", LA."HOLD4_CODE", LA."INTEREST_PAID_TO_DATE", LA."MFHASERVFEE", LA."PRINCIPAL_INTEREST_PAYMENT", LA."MLOTNBR", LA."MPLATNBR", LA."MPAGENBR", LA."LOAN_PURPOSE_CODE", LA."NON_ESCROW_DUE", LA."NON_ESCROW_BALANCE", LA."ACCRUED_INTEREST_NET", LA."ACCRUED_TO_DATE", LA."INTEREST_DUE", LA."INTEREST_PAST_DUE", LA."CHARGE_DISC1", LA."CHARGE_DISC2", LA."CHARGE_CODE1", LA."CHARGE_CODE2", LA."PYMT_DUE_DAY", LA."PER_DIEM", LA."DATE_LAST_ACTIVITY", LA."BLOCK_ID", LA."CONTRACT_ID", LA."LAST_TRANSACTION_DATE", LA."PAST_DUE_UNUSEDLINE_COMMIT_FEE", LA."BILLED_UNUSEDLINE_C0MMIT_FEE", LA."PRINCIPAL_DUE", LA."FUTURE_PAYMENT_COUNT", LA."PRINCIPAL_PAID_TO_DATE", LA."NEXT_DISBURSEMENT_DATE", LA."WAIVED_LATE_CHARGE", LA."UNUSED_LINE_COMMITMENT", LA."INVESTOR_NUMBER", LA."LAST_STATEMENT_DATE", LA."PAY_OUT_CODE", LA."NO_RETURNED_CHECKS", LA."DEALER_NUMBER", LA."CURRENT_MONTH_EARNINGS", LA."LIFE_INSURANCE_PREMIUM", LA."CREDIT_LIFE_TERM", LA."ACC_INSURANCE_TERM", LA."SUBSIDY_BALANCE", LA."CREDIT_LIFE_INDICATOR", LA."LAST_REVIEW_DATE", LA."REVIEW_DATE_FREQ", LA."INTEREST_PAID_MTD", LA."DATE_PREVIOUS_ACTIVITY", LA."UNUSED_LINE_COMMITMENT_AMT", LA."FINANCIAL_STMT_EXP_DATE", LA."FINANCING_STMT_EXP_DATE", LA."PRINCIPAL_BILLED_AMT", LA."INTEREST_BILLED_AMT", LA."BILLED_CHARGE1_AMT", LA."BILLED_CHARGE2_AMT", LA."BILL_STATUS_CODE", LA."BILLED_LINE_C0MMITMENT_FEE", LA."BILLED_DEALER_INTEREST", LA."PAST_DUE_CHARGE1_AMT", LA."PAST_DUE_CHARGE2_AMT", LA."PAST_DUE_LINE_COMMIT_FEE", LA."PAST_DUE_DEALER_INTEREST", LA."PAID_LOAN_CLOCK", LA."ESCROW_PAST_DUE", LA."NON_ESCROW_PAST_DUE", LA."COUPON_STAT_DATE", LA."COUPON_THRU_DATE", LA."COUPON_FLAG", LA."FIXED_PAYMENT_CODE", LA."BEG_ESCROW_BAL", LA."DEPOSIT_TO_ESCROW", LA."ESCROW_DISBURSEMETS", LA."ESCROW_DISBURSEMENTS_IRS", LA."LAST_STATEMENT_BAL", LA."PRE_STATEMENT_BAL", LA."PRE_STATEMENT_DATE", LA."ACCRUED_CHARGE1_AMT", LA."ACCRUED_CHARGE2_AMT", LA."CHARGE_OFF_AMOUNT", LA."PRE_PAID_AMOUNT", LA."BILLED_ESCROW_DUE", LA."DAILY_DEALER_INT_ACCRUAL", LA."DAILY_CHARG1_ACCRUAL", LA."DAILY_CHARG2_ACCRUAL", LA."DAILY_UNUSED_LINE_COMMIT_FEE", LA."PAST_PRINCIPLE_DUE", LA."REVIEWER", LA."ENTERED_BY" , LA."COLLECTION_OFFICER_CODE", LA."PREVIOUS_OFFICER_CODE",LA."LAST_CURT_AMOUNT",LA."LAST_CURT_DATE" FROM ACCOUNT A, LOAN_ACCOUNT LA WHERE A.ACCOUNT_ID=LA.ACCOUNT_ID;


-- Correct spelling mistake Interest Fequency.
--update property_definition set property_name = 'InterestFrequency', PROPERTY_DESCRIPTION = 'Interest Frequency' 
--where ENTITY_TYPE_DEFINITION_id = '144' and property_name like 'InterestFequency';
--
--update property_definition set VALID_VALUES =
--'java.lang.Integer:{default={4=Multi Family Dwelling,1=Single Family Dwelling,10=Farm Land,7=Non Residential}}' where 
--property_name like 'PropertyType' and ENTITY_TYPE_DEFINITION_id = 443;
--
--
--INSERT INTO PROPERTY_DEFINITION 
--(PROPERTY_DEFINITION_ID,ENTITY_TYPE_DEFINITION_ID,PROPERTY_NAME ,PROPERTY_INDEX,PROPERTY_DESCRIPTION,VALUE_TYPE_DEFINITION_ID,DESCRIPTION_FIELD,DESCRIPTION_FIELD_OVERRIDEN,DEFAULT_VALUE,DEFAULT_VALUE_OVERRIDEN,VALID_VALUES                    ,VALID_VALUES_OVERRIDEN,MANDATORY,MANDATORY_OVERRIDEN,HIDDEN,HIDDEN_OVERRIDEN,EDITABLE,EDITABLE_OVERRIDEN,INHERITED,CAN_EDIT_DEFINITION,CAN_DELETE_DEFINITION,CATEGORY_OVERRIDEN,CATEGORY,PRIMARY_OVERRIDEN,PRIMARY) VALUES
--((SELECT MAX(PROPERTY_DEFINITION_ID)+1 FROM PROPERTY_DEFINITION)                  ,701                      ,'RebateMethod',17            ,'Rebate Method'     ,2                       ,0                ,0                          ,null         ,0                      ,'java.lang.Integer:{default={2=Mean Method,4=Accrual,1=Straight Line,3=Actuarial,0=Rule of 78}}',0                     ,1        ,0                  ,0     ,0               ,1       ,0                 ,0        ,1                  ,1                    ,0                 ,'U'     ,0                ,0     )
--;
--
--INSERT INTO PROPERTY_DEFINITION
--(PROPERTY_DEFINITION_ID,ENTITY_TYPE_DEFINITION_ID,PROPERTY_NAME  ,PROPERTY_INDEX,PROPERTY_DESCRIPTION,VALUE_TYPE_DEFINITION_ID,DESCRIPTION_FIELD,DESCRIPTION_FIELD_OVERRIDEN,DEFAULT_VALUE,DEFAULT_VALUE_OVERRIDEN,VALID_VALUES                              ,VALID_VALUES_OVERRIDEN,MANDATORY,MANDATORY_OVERRIDEN,HIDDEN,HIDDEN_OVERRIDEN,EDITABLE,EDITABLE_OVERRIDEN,INHERITED,CAN_EDIT_DEFINITION,CAN_DELETE_DEFINITION,CATEGORY_OVERRIDEN,CATEGORY,PRIMARY_OVERRIDEN,PRIMARY) VALUES
--((SELECT MAX(PROPERTY_DEFINITION_ID)+1 FROM PROPERTY_DEFINITION)                  ,701                      ,'RemainingTerm',18            ,'Remaining Term'    ,6                       ,0                ,0                          ,null         ,0                      ,'com.vsoftcorp.time.Duration:{default={}}',0                     ,0        ,0                  ,1     ,0               ,0       ,0                 ,0        ,1                  ,1                    ,0                 ,null    ,0                ,0      )
--;
--
--update property_definition set default_value = 'com.vsoftcorp.time.Duration:DAY:365' where 
--ENTITY_TYPE_DEFINITION_id = 485 and PROPERTY_NAME = 'MaxPeriodCanBackDate';
--
--update PROPERTY_DEFINITION set DEFAULT_VALUE = null , DEFAULT_VALUE_OVERRIDEN = 0 where 
--PROPERTY_NAME = 'MaxPeriodCanBackDate' and 
--ENTITY_TYPE_DEFINITION_id != 485;
