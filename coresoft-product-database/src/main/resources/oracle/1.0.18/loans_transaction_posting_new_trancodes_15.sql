
---------------  Escrow Pymnt(14)-------------

insert into ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, DEBIT_OR_CREDIT, DESCRIPTION, ACCOUNT_CATEGORY)
values ((select max(UNIQUE_ID) from ENTRY_TYPE) + 1,
 (select max(UNIQUE_ID) from ENTRY_TYPE) + 1,
 null, '1', 'Escrow Payment', '2');

insert into LOAN_ENTRY_TYPE (UNIQUE_ID, ACCOUNT_TYPE_ID, TRAN_TYPE_GROUP_ID, EVENT_TYPE_ID, DISTRIBUTION_RULE_ID, IS_MONETARY)
values ((select max(UNIQUE_ID) from ENTRY_TYPE),
'208', 'REGULAR', '14', '501', '0');

insert into LOAN_ENTRY_TYPE_LINK (ENTRY_TYPE_ID, CHILD_ENTRY_TYPE_ID)
values (
(select max(UNIQUE_ID) from ENTRY_TYPE), '1903');

-- INSERT INTO LOAN_LEDGER_POSTING_PARAMETERS(UNIQUE_ID, INSTITUTION_ID, ENTRY_TYPE_ID, ACCOUNT_TYPE_ID, AFFECTS_DATE_LAST_ACTIVITY, AFFECTS_ORIG_LOAN_BALANCE, AFFECTS_PRINCIPAL_BALANCE, AFFECTS_PRINCIPAL_DUE, AFFECTS_INTEREST_DUE, AFFECTS_ESCROW_DUE, AFFECTS_ESCROW_BALANCE, AFFECTS_NONESCROW_DUE, AFFECTS_NONESCROW_BALANCE, AFFECTS_BANK_REBATE,  AFFECTS_CREDIT_LIFE_PREMIUM, AFFECTS_CREDIT_LIFE_REBATE,  AFFECTS_ACC_HEALTH_PREMIUM, AFFECTS_ACC_HEALTH_REBATE, AFFECTS_OTHER_FEE_DUE, AFFECTS_COLLATERAL_INS_DUE, AFFECTS_COLLATERAL_INS_PREMIUM, AFFECTS_COLLATERAL_INS_REBATE, AFFECTS_UNAPPLIED_FUND, AFFECTS_PARTIAL_PAYMENT, AFFECTS_COLL_LATE_CHARGE, AFFECTS_UNCOLL_LATE_CHARGE, AFFECTS_WAIVED_LATE_CHARGE, AFFECTS_DATE_LAST_TRANSACTION, AFFECTS_DATE_NEXT_DUE, AFFECTS_LINE_OF_CREDIT, AFFECTS_UNUSED_LINE_OF_CREDIT, AFFECTS_NET_PAYOFF, AFFECTS_PAYMENT_MAID, AFFECTS_RETURNED_CHECKS, AFFECTS_INTEREST_YTD, AFFECTS_INTEREST_MTD, AFFECTS_INTEREST_LTD, AFFECTS_ACCRUED_INTEREST, AFFECTS_LOAN_STATUS, AFFECTS_PAYOUT_CODE, AFFECTS_DATE_CLOSED, AFFECTS_NEXTESCROWDISBURSEDATE, AFFECTS_PRINCIPAL_PAID_TO_DATE, AFFECTS_INTEREST_PAID_TO_DATE, AFFECTS_FUTURE_PAYMENT_COUNT, AFFECTS_DATE_PREVIOUS_ACTIVITY, AFFECTS_SPECIAL_RES_REBATE_1, AFFECTS_SPECIAL_RES_REBATE_2, AFFECTS_PAYMENT_NUMBER, AFFECTS_ACCRUED_INTEREST_NET, AFFECTS_ACCRUED_INTEREST_MTD, AFFECTS_ACCRUED_INTEREST_YTD, AFFECTS_ACCUMULATED_INTEREST, AFFECTS_NEXT_NONESCDISBURDATE, AFFECTS_DEALER_RESERVE_REBATE, AFFECTS_DEALER_HOLDBACK_REBATE, AFFECTS_SPECIAL_RESERVE1, AFFECTS_SPECIAL_RESERVE2, AFFECTS_LAST_STMT_BALANCE, AFFECTS_LAST_STMT_DATE, AFFECTS_LAST_PAYMENT_DATE, AFFECTS_DEALER_INTEREST, AFFECTS_DEALER_ACCRUED_INT, AFFECTS_DEALER_ACCUMULATED_INT, AFFECTS_ACCRUED_CHARGE1, AFFECTS_ACCUMULATED_CHARGE1, AFFECTS_ACCRUED_CHARGE2, AFFECTS_ACCUMULATED_CHARGE2, AFFECTS_UNUSED_LINE_COMMIT_FEE, AFFECTS_ACCRDUNUSEDLINECOMMFEE, AFFECTS_LOW_BORROWING_YTD, AFFECTS_AGGREGATE_BAL_YTD, AFFECTS_TAX_PAID_YTD, AFFECTS_PRE_YEAR_TAX_PAID, AFFECTS_PRE_YEAR_INT_PAID, AFFECTS_ACCUMUNUSEDLINECOMMFEE) 
--    VALUES((select max(UNIQUE_ID) from ENTRY_TYPE),
-- '1', (select max(UNIQUE_ID) from ENTRY_TYPE),
-- '208', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
--
--UPDATE LOAN_LEDGER_POSTING_PARAMETERS SET AFFECTS_DATE_LAST_ACTIVITY=1,AFFECTS_DATE_PREVIOUS_ACTIVITY=1,
-- AFFECTS_ESCROW_DUE=1, AFFECTS_ESCROW_BALANCE=1, AFFECTS_LAST_PAYMENT_DATE=1, 
--AFFECTS_DATE_LAST_TRANSACTION=1,AFFECTS_NET_PAYOFF=1 WHERE UNIQUE_ID=(select max(UNIQUE_ID) from ENTRY_TYPE);


---------------  Ah life pymnt (17)-------------

update ENTRY_TYPE set DESCRIPTION ='Credit -A/H Ins Payment' where UNIQUE_ID=1736;

update PERCENTAGE_DISTRIBUTION_RULE set ENTRY_TYPE_ID='1906' where DISTRIBUTION_RULE_ID=736;

--update LOAN_LEDGER_POSTING_PARAMETERS set AFFECTS_NONESCROW_DUE=1, AFFECTS_NONESCROW_BALANCE=1, AFFECTS_LAST_PAYMENT_DATE=1
--where  UNIQUE_ID=1736;


--------------- mort AH Life pymnt (17)-------------


insert into ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, DEBIT_OR_CREDIT, DESCRIPTION, ACCOUNT_CATEGORY)
values ((select max(UNIQUE_ID) from ENTRY_TYPE) + 1,
 (select max(UNIQUE_ID) from ENTRY_TYPE) + 1,
 null, '1', 'Credit -A/H Ins Payment', '2');

insert into LOAN_ENTRY_TYPE (UNIQUE_ID, ACCOUNT_TYPE_ID, TRAN_TYPE_GROUP_ID, EVENT_TYPE_ID, DISTRIBUTION_RULE_ID, IS_MONETARY)
values ((select max(UNIQUE_ID) from ENTRY_TYPE),
'110', 'REGULAR', '17', '736', '0');

insert into LOAN_ENTRY_TYPE_LINK (ENTRY_TYPE_ID, CHILD_ENTRY_TYPE_ID)
values (
(select max(UNIQUE_ID) from ENTRY_TYPE), '1906');

-- INSERT INTO LOAN_LEDGER_POSTING_PARAMETERS(UNIQUE_ID, INSTITUTION_ID, ENTRY_TYPE_ID, ACCOUNT_TYPE_ID, AFFECTS_DATE_LAST_ACTIVITY, AFFECTS_ORIG_LOAN_BALANCE, AFFECTS_PRINCIPAL_BALANCE, AFFECTS_PRINCIPAL_DUE, AFFECTS_INTEREST_DUE, AFFECTS_ESCROW_DUE, AFFECTS_ESCROW_BALANCE, AFFECTS_NONESCROW_DUE, AFFECTS_NONESCROW_BALANCE, AFFECTS_BANK_REBATE,  AFFECTS_CREDIT_LIFE_PREMIUM, AFFECTS_CREDIT_LIFE_REBATE,  AFFECTS_ACC_HEALTH_PREMIUM, AFFECTS_ACC_HEALTH_REBATE, AFFECTS_OTHER_FEE_DUE, AFFECTS_COLLATERAL_INS_DUE, AFFECTS_COLLATERAL_INS_PREMIUM, AFFECTS_COLLATERAL_INS_REBATE, AFFECTS_UNAPPLIED_FUND, AFFECTS_PARTIAL_PAYMENT, AFFECTS_COLL_LATE_CHARGE, AFFECTS_UNCOLL_LATE_CHARGE, AFFECTS_WAIVED_LATE_CHARGE, AFFECTS_DATE_LAST_TRANSACTION, AFFECTS_DATE_NEXT_DUE, AFFECTS_LINE_OF_CREDIT, AFFECTS_UNUSED_LINE_OF_CREDIT, AFFECTS_NET_PAYOFF, AFFECTS_PAYMENT_MAID, AFFECTS_RETURNED_CHECKS, AFFECTS_INTEREST_YTD, AFFECTS_INTEREST_MTD, AFFECTS_INTEREST_LTD, AFFECTS_ACCRUED_INTEREST, AFFECTS_LOAN_STATUS, AFFECTS_PAYOUT_CODE, AFFECTS_DATE_CLOSED, AFFECTS_NEXTESCROWDISBURSEDATE, AFFECTS_PRINCIPAL_PAID_TO_DATE, AFFECTS_INTEREST_PAID_TO_DATE, AFFECTS_FUTURE_PAYMENT_COUNT, AFFECTS_DATE_PREVIOUS_ACTIVITY, AFFECTS_SPECIAL_RES_REBATE_1, AFFECTS_SPECIAL_RES_REBATE_2, AFFECTS_PAYMENT_NUMBER, AFFECTS_ACCRUED_INTEREST_NET, AFFECTS_ACCRUED_INTEREST_MTD, AFFECTS_ACCRUED_INTEREST_YTD, AFFECTS_ACCUMULATED_INTEREST, AFFECTS_NEXT_NONESCDISBURDATE, AFFECTS_DEALER_RESERVE_REBATE, AFFECTS_DEALER_HOLDBACK_REBATE, AFFECTS_SPECIAL_RESERVE1, AFFECTS_SPECIAL_RESERVE2, AFFECTS_LAST_STMT_BALANCE, AFFECTS_LAST_STMT_DATE, AFFECTS_LAST_PAYMENT_DATE, AFFECTS_DEALER_INTEREST, AFFECTS_DEALER_ACCRUED_INT, AFFECTS_DEALER_ACCUMULATED_INT, AFFECTS_ACCRUED_CHARGE1, AFFECTS_ACCUMULATED_CHARGE1, AFFECTS_ACCRUED_CHARGE2, AFFECTS_ACCUMULATED_CHARGE2, AFFECTS_UNUSED_LINE_COMMIT_FEE, AFFECTS_ACCRDUNUSEDLINECOMMFEE, AFFECTS_LOW_BORROWING_YTD, AFFECTS_AGGREGATE_BAL_YTD, AFFECTS_TAX_PAID_YTD, AFFECTS_PRE_YEAR_TAX_PAID, AFFECTS_PRE_YEAR_INT_PAID, AFFECTS_ACCUMUNUSEDLINECOMMFEE) 
--    VALUES((select max(UNIQUE_ID) from ENTRY_TYPE),
-- '1',( select max(UNIQUE_ID) from ENTRY_TYPE),
-- '110', 0,  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
--
--UPDATE LOAN_LEDGER_POSTING_PARAMETERS SET AFFECTS_DATE_LAST_ACTIVITY=1,AFFECTS_DATE_PREVIOUS_ACTIVITY=1,
-- AFFECTS_NONESCROW_BALANCE=1, AFFECTS_LAST_PAYMENT_DATE=1, 
--AFFECTS_DATE_LAST_TRANSACTION=1,AFFECTS_NET_PAYOFF=1 WHERE UNIQUE_ID=(select max(UNIQUE_ID) from ENTRY_TYPE);


---------------------interest pymnt mort (13)


insert into ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, DEBIT_OR_CREDIT, DESCRIPTION, ACCOUNT_CATEGORY)
values ((select max(UNIQUE_ID) from ENTRY_TYPE) + 1,
 (select max(UNIQUE_ID) from ENTRY_TYPE) + 1,
 null, '1', 'Interest Payment', '2');

insert into LOAN_ENTRY_TYPE (UNIQUE_ID, ACCOUNT_TYPE_ID, TRAN_TYPE_GROUP_ID, EVENT_TYPE_ID, DISTRIBUTION_RULE_ID, IS_MONETARY)
values ((select max(UNIQUE_ID) from ENTRY_TYPE),
'110', 'REGULAR', '13', '732', '0');

insert into LOAN_ENTRY_TYPE_LINK (ENTRY_TYPE_ID, CHILD_ENTRY_TYPE_ID)
values (
(select max(UNIQUE_ID) from ENTRY_TYPE), '1905');

-- INSERT INTO LOAN_LEDGER_POSTING_PARAMETERS(UNIQUE_ID, INSTITUTION_ID, ENTRY_TYPE_ID, ACCOUNT_TYPE_ID, AFFECTS_DATE_LAST_ACTIVITY, AFFECTS_ORIG_LOAN_BALANCE, AFFECTS_PRINCIPAL_BALANCE, AFFECTS_PRINCIPAL_DUE, AFFECTS_INTEREST_DUE, AFFECTS_ESCROW_DUE, AFFECTS_ESCROW_BALANCE, AFFECTS_NONESCROW_DUE, AFFECTS_NONESCROW_BALANCE, AFFECTS_BANK_REBATE,  AFFECTS_CREDIT_LIFE_PREMIUM, AFFECTS_CREDIT_LIFE_REBATE,  AFFECTS_ACC_HEALTH_PREMIUM, AFFECTS_ACC_HEALTH_REBATE, AFFECTS_OTHER_FEE_DUE, AFFECTS_COLLATERAL_INS_DUE, AFFECTS_COLLATERAL_INS_PREMIUM, AFFECTS_COLLATERAL_INS_REBATE, AFFECTS_UNAPPLIED_FUND, AFFECTS_PARTIAL_PAYMENT, AFFECTS_COLL_LATE_CHARGE, AFFECTS_UNCOLL_LATE_CHARGE, AFFECTS_WAIVED_LATE_CHARGE, AFFECTS_DATE_LAST_TRANSACTION, AFFECTS_DATE_NEXT_DUE, AFFECTS_LINE_OF_CREDIT, AFFECTS_UNUSED_LINE_OF_CREDIT, AFFECTS_NET_PAYOFF, AFFECTS_PAYMENT_MAID, AFFECTS_RETURNED_CHECKS, AFFECTS_INTEREST_YTD, AFFECTS_INTEREST_MTD, AFFECTS_INTEREST_LTD, AFFECTS_ACCRUED_INTEREST, AFFECTS_LOAN_STATUS, AFFECTS_PAYOUT_CODE, AFFECTS_DATE_CLOSED, AFFECTS_NEXTESCROWDISBURSEDATE, AFFECTS_PRINCIPAL_PAID_TO_DATE, AFFECTS_INTEREST_PAID_TO_DATE, AFFECTS_FUTURE_PAYMENT_COUNT, AFFECTS_DATE_PREVIOUS_ACTIVITY, AFFECTS_SPECIAL_RES_REBATE_1, AFFECTS_SPECIAL_RES_REBATE_2, AFFECTS_PAYMENT_NUMBER, AFFECTS_ACCRUED_INTEREST_NET, AFFECTS_ACCRUED_INTEREST_MTD, AFFECTS_ACCRUED_INTEREST_YTD, AFFECTS_ACCUMULATED_INTEREST, AFFECTS_NEXT_NONESCDISBURDATE, AFFECTS_DEALER_RESERVE_REBATE, AFFECTS_DEALER_HOLDBACK_REBATE, AFFECTS_SPECIAL_RESERVE1, AFFECTS_SPECIAL_RESERVE2, AFFECTS_LAST_STMT_BALANCE, AFFECTS_LAST_STMT_DATE, AFFECTS_LAST_PAYMENT_DATE, AFFECTS_DEALER_INTEREST, AFFECTS_DEALER_ACCRUED_INT, AFFECTS_DEALER_ACCUMULATED_INT, AFFECTS_ACCRUED_CHARGE1, AFFECTS_ACCUMULATED_CHARGE1, AFFECTS_ACCRUED_CHARGE2, AFFECTS_ACCUMULATED_CHARGE2, AFFECTS_UNUSED_LINE_COMMIT_FEE, AFFECTS_ACCRDUNUSEDLINECOMMFEE, AFFECTS_LOW_BORROWING_YTD, AFFECTS_AGGREGATE_BAL_YTD, AFFECTS_TAX_PAID_YTD, AFFECTS_PRE_YEAR_TAX_PAID, AFFECTS_PRE_YEAR_INT_PAID, AFFECTS_ACCUMUNUSEDLINECOMMFEE) 
--    VALUES((select max(UNIQUE_ID) from ENTRY_TYPE),
-- '1', (select max(UNIQUE_ID) from ENTRY_TYPE),
-- '110', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
--
--UPDATE LOAN_LEDGER_POSTING_PARAMETERS SET AFFECTS_DATE_LAST_ACTIVITY=1,AFFECTS_DATE_PREVIOUS_ACTIVITY=1,
-- AFFECTS_ACCRUED_INTEREST_NET=1, AFFECTS_ACCRUED_INTEREST_MTD=1, AFFECTS_ACCRUED_INTEREST_YTD=1, AFFECTS_ACCUMULATED_INTEREST=1, AFFECTS_INTEREST_YTD=1, AFFECTS_INTEREST_MTD=1, AFFECTS_INTEREST_LTD=1, 
--AFFECTS_LAST_PAYMENT_DATE=1, AFFECTS_DATE_LAST_TRANSACTION=1,AFFECTS_NET_PAYOFF=1 
--WHERE UNIQUE_ID=(select max(UNIQUE_ID) from ENTRY_TYPE);


