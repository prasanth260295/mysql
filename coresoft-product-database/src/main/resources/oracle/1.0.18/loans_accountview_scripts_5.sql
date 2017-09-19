CREATE OR REPLACE VIEW LOAN_ACCOUNT_VW
(
   ACCOUNT_NO,
   INSTITUTION_ID,
   PRODUCT_ID,
   ACCOUNT_CATEGORY,
   ACCOUNT_TYPE_ID,
   BUSINESS_DATE,
   DATE_OPENED,
   CREATION_DATE,
   ACCOUNT_ID,
   CUSTOMER_ID,
   NOTE_NUMBER,
   INTEREST_BASE_CODE,
   LINE_OF_CREDIT,
   NEXT_PAYMENT_DUE_DATE,
   SCHEDULED_PAYMENT_DATE,
   NEXT_PRINCIPLE_DUE,
   NEXT_SUBSIDY_AMOUNT,
   PAST_DUE_AMOUNT,
   AVAILED_LOAN_AMOUNT,
   PRINCIPLE_BALANCE,
   ACCRUED_INTEREST,
   UNAPPLIED_FUNDS,
   LOSS_DRAFT_FUNDS,
   LATE_FEES_DUE,
   OTHER_FEES_DUE,
   LOAN_STATUS,
   NEXT_REVIEW_DATE,
   LAST_MAINTENANCE_DATE,
   CLOSED_DATE,
   OPENING_BRANCH,
   PRIMARY_OFFICER,
   CALL_REPORT_CODE,
   EXAMINER_CLASSIFICATION_CODE,
   PREVIOUS_OFFICER,
   COLLECTION_OFFICER,
   REPAYMENT_MODE,
   APPLY_PAYMENTS_AS_BILLED,
   FIRST_PAYMENT_DATE,
   PAYMENTS_SCHEDULED,
   PAYMENTS_MADE,
   PRINT_BILLING_NOTICE,
   PRINT_COUPON_BOOK,
   PRINT_PAST_DUE_NOTICE,
   BALLOON_PAYMENT,
   MINIMUM_INTEREST_CHARGE,
   SPECIAL_MAILING_INSTRUCTIONS,
   CENSUS_TRACK,
   ORDER_COUPON_BOOK_NOW,
   CONTINUES_ORDER_OF_COUPON_BOOK,
   LATE_CHARGE_CODE,
   AMORTIZED_BALANCE,
   LAST_ADDL_PRINCIPAL_DATE,
   LAST_ADDL_PRINCIPAL_AMOUNT,
   INTEREST_RATE_TYPE,
   ACCELERATED_RATE_AT_MATURITY,
   GRACE_DAYS_AT_MATURITY,
   LINE_OF_CREDIT_ID,
   ESCROW_ACCOUNT_ID,
   NON_ACCRUAL,
   ORIGINAL_MATURITY_DATE,
   APPROVED_LIMIT,
   SECONDARY_ACCRUED,
   PREPAYMENT_PENALTY_CODE,
   PREPAYMENT_PENALTY,
   PARTY_ID,
   FREQUENCY_PRINCIPAL,
   ANNUAL_PERCENTAGE_RATE,
   COMBINED_STATEMENT,
   PARTIAL_PAYMENT,
   INTEREST_PAID_YTD,
   INTEREST_PAID_PYTD,
   INTEREST_PAID_LTD,
   LATE_FEES_PAID_YTD,
   LATE_FEES_PAID_PYTD,
   LATE_FEES_PAID_LTD,
   POINTS_PAID_YTD,
   POINTS_PAID_PYTD,
   POINTS_PAID_LTD,
   TAXES_PAID_YTD,
   TAXES_PAID_PYTD,
   TAXES_PAID_LTD,
   ORIGINATION_FEES_YTD,
   ORIGINATION_FEES_PYTD,
   ORIGINATION_FEES_LTD,
   ESCROW_INT_PAID_YTD,
   ESCROW_INT_PAID_PYTD,
   ESCROW_INT_PAID_LTD,
   POINTS_PAID_BY_BORROWER,
   SUBSIDIES_PAID_YTD,
   PROPERTY_OR_COLLATERAL,   
   LATE_CHRG_INDICATOR,
   AUTO_DRAFT,
   CLASS_CODE,
   LAST_PAYMENT_DATE,
   IS_AMORTIZED,
   DAYS_IN_A_YEAR,
   LATE_CHRG_YTD,
   AMT_LC_WAIVED,
   WAIVE_LATE_CHARGE,   
   LOAN_TYPE_ID,
   SCHEDULED_PAYMENT_DUE_DATE,
   EMPLOYEE_CODE,
   HOLD4_CODE,
   INTEREST_PAID_TO_DATE,
   MFHASERVFEE,
   PRINCIPAL_INTEREST_PAYMENT,
   MLOTNBR,
   MPLATNBR,
   MPAGENBR,
   LOAN_PURPOSE_CODE,   
   ACCRUED_INTEREST_NET,   
   INTEREST_DUE,
   INTEREST_PAST_DUE,
   CHARGE_DISC1,
   CHARGE_DISC2,
   CHARGE_CODE1,
   CHARGE_CODE2,
   PYMT_DUE_DAY,
   PER_DIEM,
   DATE_LAST_ACTIVITY,
   CONTRACT_ID,
   LAST_TRANSACTION_DATE,
   PAST_DUE_UNUSEDLINE_COMMIT_FEE,
   PRINCIPAL_DUE,
   FUTURE_PAYMENT_COUNT,
   PRINCIPAL_PAID_TO_DATE,
   WAIVED_LATE_CHARGE,
   UNUSED_LINE_COMMITMENT,
   INVESTOR_NUMBER,
   LAST_STATEMENT_DATE,
   PAY_OUT_CODE,
   NO_RETURNED_CHECKS,
   CURRENT_MONTH_EARNINGS,
   LIFE_INSURANCE_PREMIUM,
   SUBSIDY_BALANCE,
   CREDIT_LIFE_INDICATOR,
   LAST_REVIEW_DATE,
   REVIEW_DATE_FREQ,
   INTEREST_PAID_MTD,
   DATE_PREVIOUS_ACTIVITY,
   FINANCIAL_STMT_EXP_DATE,
   FINANCING_STMT_EXP_DATE,
   PAST_DUE_CHARGE1_AMT,
   PAST_DUE_CHARGE2_AMT,
   PAST_DUE_LINE_COMMIT_FEE,
   PAST_DUE_DEALER_INTEREST,
   PAID_LOAN_CLOCK,
   COUPON_THRU_DATE,
   LAST_STATEMENT_BAL,
   PRE_STATEMENT_BAL,
   PRE_STATEMENT_DATE,
   ACCRUED_CHARGE1_AMT,
   ACCRUED_CHARGE2_AMT,
   CHARGE_OFF_AMOUNT,
   PRE_PAID_AMOUNT,
   DAILY_CHARG1_ACCRUAL,
   DAILY_CHARG2_ACCRUAL,
   DAILY_UNUSED_LINE_COMMIT_FEE,
   PAST_PRINCIPLE_DUE,
   REVIEWER,
   ENTERED_BY,
   PREVIOUS_OFFICER_CODE,
   COLLECTION_OFFICER_CODE,
   LAST_CURT_AMOUNT,
   LAST_CURT_DATE
)
AS
SELECT
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
LA."NOTE_NUMBER",
LA."INTEREST_BASE_CODE",
LA."LINE_OF_CREDIT",
LA."NEXT_PAYMENT_DUE_DATE",
LA."SCHEDULED_PAYMENT_DATE",
LA."NEXT_PRINCIPLE_DUE",
LA."NEXT_SUBSIDY_AMOUNT",
LA."PAST_DUE_AMOUNT",
LA."AVAILED_LOAN_AMOUNT",
LA."PRINCIPLE_BALANCE",
LA."ACCRUED_INTEREST",
LA."UNAPPLIED_FUNDS",
LA."LOSS_DRAFT_FUNDS",
LA."LATE_FEES_DUE",
LA."OTHER_FEES_DUE",
LA."LOAN_STATUS",
LA."NEXT_REVIEW_DATE",
LA."LAST_MAINTENANCE_DATE",
LA."CLOSED_DATE",
LA."OPENING_BRANCH",
LA."PRIMARY_OFFICER",
LA."CALL_REPORT_CODE",
LA."EXAMINER_CLASSIFICATION_CODE",
LA."PREVIOUS_OFFICER",
LA."COLLECTION_OFFICER",
LA."REPAYMENT_MODE",
LA."APPLY_PAYMENTS_AS_BILLED",
LA."FIRST_PAYMENT_DATE",
LA."PAYMENTS_SCHEDULED",
LA."PAYMENTS_MADE",
LA."PRINT_BILLING_NOTICE",
LA."PRINT_COUPON_BOOK",
LA."PRINT_PAST_DUE_NOTICE",
LA."BALLOON_PAYMENT",
LA."MINIMUM_INTEREST_CHARGE",
LA."SPECIAL_MAILING_INSTRUCTIONS",
LA."CENSUS_TRACK",
LA."ORDER_COUPON_BOOK_NOW",
LA."CONTINUES_ORDER_OF_COUPON_BOOK",
LA."LATE_CHARGE_CODE",
LA."AMORTIZED_BALANCE",
LA."LAST_ADDL_PRINCIPAL_DATE",
LA."LAST_ADDL_PRINCIPAL_AMOUNT",
LA."INTEREST_RATE_TYPE",
LA."ACCELERATED_RATE_AT_MATURITY",
LA."GRACE_DAYS_AT_MATURITY",
LA."LINE_OF_CREDIT_ID",
LA."ESCROW_ACCOUNT_ID",
LA."NON_ACCRUAL",
LA."ORIGINAL_MATURITY_DATE",
LA."APPROVED_LIMIT",
LA."SECONDARY_ACCRUED",
LA."PREPAYMENT_PENALTY_CODE",
LA."PREPAYMENT_PENALTY",
LA."PARTY_ID",
LA."FREQUENCY_PRINCIPAL",
LA."ANNUAL_PERCENTAGE_RATE",
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
LA."PROPERTY_OR_COLLATERAL",
LA."LATE_CHRG_INDICATOR",
LA."AUTO_DRAFT",
LA."CLASS_CODE",
LA."LAST_PAYMENT_DATE",
LA."IS_AMORTIZED",
LA."DAYS_IN_A_YEAR",
LA."LATE_CHRG_YTD",
LA."AMT_LC_WAIVED",
LA."WAIVE_LATE_CHARGE",
LA."LOAN_TYPE_ID",
LA."SCHEDULED_PAYMENT_DUE_DATE",
LA."EMPLOYEE_CODE",
LA."HOLD4_CODE",
LA."INTEREST_PAID_TO_DATE",
LA."MFHASERVFEE",
LA."PRINCIPAL_INTEREST_PAYMENT",
LA."MLOTNBR",
LA."MPLATNBR",
LA."MPAGENBR",
LA."LOAN_PURPOSE_CODE",
LA."ACCRUED_INTEREST_NET",
LA."INTEREST_DUE",
LA."INTEREST_PAST_DUE",
LA."CHARGE_DISC1",
LA."CHARGE_DISC2",
LA."CHARGE_CODE1",
LA."CHARGE_CODE2",
LA."PYMT_DUE_DAY",
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
LA."COLLECTION_OFFICER_CODE",
LA."PREVIOUS_OFFICER_CODE",
LA."LAST_CURT_AMOUNT",
LA."LAST_CURT_DATE"
FROM ACCOUNT A, LOAN_ACCOUNT LA
WHERE A.ACCOUNT_ID=LA.ACCOUNT_ID
;
