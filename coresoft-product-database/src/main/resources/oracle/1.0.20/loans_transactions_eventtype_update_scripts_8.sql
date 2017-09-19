update LOAN_EVENT_TYPE set DESCRIPTION='Regular Payment' where CORESOFT_EVENT_CODE = '110';
update LOAN_EVENT_TYPE set DESCRIPTION='Late Charge Payment' where CORESOFT_EVENT_CODE = '016';
update LOAN_EVENT_TYPE set DESCRIPTION='Initial Funding' where CORESOFT_EVENT_CODE = '001';
update LOAN_EVENT_TYPE set DESCRIPTION='Curtailment – Non True Payment' where CORESOFT_EVENT_CODE = '120';
update LOAN_EVENT_TYPE set DESCRIPTION='Curtailment Payment' where CORESOFT_EVENT_CODE = '121';
update LOAN_EVENT_TYPE set DESCRIPTION='Loan Payoff payment' where CORESOFT_EVENT_CODE = '015';
update LOAN_EVENT_TYPE set DESCRIPTION='Advance' where CORESOFT_EVENT_CODE = '005';
update LOAN_EVENT_TYPE set DESCRIPTION='Escrow Payment' where CORESOFT_EVENT_CODE = '014';
update LOAN_EVENT_TYPE set DESCRIPTION='Loan Extension' where CORESOFT_EVENT_CODE = '042';
update LOAN_EVENT_TYPE set DESCRIPTION='Other Fee Payment' where CORESOFT_EVENT_CODE = '019';
update LOAN_EVENT_TYPE set DESCRIPTION='Life -A/H Payment ' where CORESOFT_EVENT_CODE = '017';
update LOAN_EVENT_TYPE set DESCRIPTION='Interest Payment' where CORESOFT_EVENT_CODE = '013';
update LOAN_EVENT_TYPE set DESCRIPTION='Principal – Debit Adjustment' where CORESOFT_EVENT_CODE = '021';
update LOAN_EVENT_TYPE set DESCRIPTION='Late Charge Paid – Debit Adjustment' where CORESOFT_EVENT_CODE = '022';
update LOAN_EVENT_TYPE set DESCRIPTION='Escrow– Debit Adjustment' where CORESOFT_EVENT_CODE = '023';
update LOAN_EVENT_TYPE set DESCRIPTION='Other Fee– Debit Adjustment' where CORESOFT_EVENT_CODE = '024';
update LOAN_EVENT_TYPE set DESCRIPTION='Principal - Credit Adjustment' where CORESOFT_EVENT_CODE = '031';
update LOAN_EVENT_TYPE set DESCRIPTION='Late Charge Paid- Credit Adjustment' where CORESOFT_EVENT_CODE = '032';
update LOAN_EVENT_TYPE set DESCRIPTION='Escrow- Credit Adjustment' where CORESOFT_EVENT_CODE = '033';
update LOAN_EVENT_TYPE set DESCRIPTION='Other Fee- Credit Adjustment' where CORESOFT_EVENT_CODE = '034';
update LOAN_EVENT_TYPE set DESCRIPTION='Regular Payment Reversal' where CORESOFT_EVENT_CODE = '310';
update LOAN_EVENT_TYPE set DESCRIPTION='Late Charge Payment Reversal' where CORESOFT_EVENT_CODE = '216';
update LOAN_EVENT_TYPE set DESCRIPTION='Initial Funding Reversal' where CORESOFT_EVENT_CODE = '201';
update LOAN_EVENT_TYPE set DESCRIPTION='Curtailment – Non True Payment  Reversal' where CORESOFT_EVENT_CODE = '320';
update LOAN_EVENT_TYPE set DESCRIPTION='Curtailment Payment Reversal' where CORESOFT_EVENT_CODE = '321';
update LOAN_EVENT_TYPE set DESCRIPTION='Loan Payoff Reversal' where CORESOFT_EVENT_CODE = '215';
update LOAN_EVENT_TYPE set DESCRIPTION='Loan Advance Reversal' where CORESOFT_EVENT_CODE = '205';
update LOAN_EVENT_TYPE set DESCRIPTION='Escrow Payment Reversal' where CORESOFT_EVENT_CODE = '214';
update LOAN_EVENT_TYPE set DESCRIPTION='Loan Extension Reversal' where CORESOFT_EVENT_CODE = '242';
update LOAN_EVENT_TYPE set DESCRIPTION='Other Fee Payment Reversal' where CORESOFT_EVENT_CODE = '219';
update LOAN_EVENT_TYPE set DESCRIPTION='Life-A/H Payment Reversal' where CORESOFT_EVENT_CODE = '217';
update LOAN_EVENT_TYPE set DESCRIPTION='Interest Payment Reversal' where CORESOFT_EVENT_CODE = '213';
update LOAN_EVENT_TYPE set DESCRIPTION='Principal- Debit Adjustment Reversal' where CORESOFT_EVENT_CODE = '221';
update LOAN_EVENT_TYPE set DESCRIPTION='Late Charge Paid- Debit Adjustment Reversal' where CORESOFT_EVENT_CODE = '222';
update LOAN_EVENT_TYPE set DESCRIPTION='Escrow- Debit Adjustment Reversal' where CORESOFT_EVENT_CODE = '223';
update LOAN_EVENT_TYPE set DESCRIPTION='Other Fee- Debit Adjustment Reversal' where CORESOFT_EVENT_CODE = '224';
update LOAN_EVENT_TYPE set DESCRIPTION='Principal- Credit Adjustment Reversal' where CORESOFT_EVENT_CODE = '231';
update LOAN_EVENT_TYPE set DESCRIPTION='Late Charge Paid - Credit Adjustment Reversa' where CORESOFT_EVENT_CODE = '232';
update LOAN_EVENT_TYPE set DESCRIPTION='Escrow - Credit Adjustment Reversal' where CORESOFT_EVENT_CODE = '233';
update LOAN_EVENT_TYPE set DESCRIPTION='Other Fee - Credit Adjustment Reversal' where CORESOFT_EVENT_CODE = '234';
update LOAN_EVENT_TYPE set DESCRIPTION='Advance Payment Reversal' where CORESOFT_EVENT_CODE = '205';
update LOAN_EVENT_TYPE set DESCRIPTION='Future Payment' where CORESOFT_EVENT_CODE = '112';
update LOAN_EVENT_TYPE set DESCRIPTION='Future Payment Reversal' where CORESOFT_EVENT_CODE = '312';
update LOAN_EVENT_TYPE set DESCRIPTION='END DAY' where CORESOFT_EVENT_CODE = '099';
update LOAN_EVENT_TYPE set DESCRIPTION='END DAY Reversal' where CORESOFT_EVENT_CODE = '299';


delete from LOAN_EXCEPTION_CODE_LOOKUP;

insert into LOAN_EXCEPTION_CODE_LOOKUP( EXCEPTION_CODE_ID, DESCRIPTION) VALUES (51, 'Pending New Account' );
insert into LOAN_EXCEPTION_CODE_LOOKUP( EXCEPTION_CODE_ID, DESCRIPTION) VALUES (52, 'Active Account with zero balance' );
insert into LOAN_EXCEPTION_CODE_LOOKUP( EXCEPTION_CODE_ID, DESCRIPTION) VALUES (53, 'Refund Due to Customer' );
insert into LOAN_EXCEPTION_CODE_LOOKUP( EXCEPTION_CODE_ID, DESCRIPTION) VALUES (54, 'Late Charges Dues on Zero Balance Account' );
insert into LOAN_EXCEPTION_CODE_LOOKUP( EXCEPTION_CODE_ID, DESCRIPTION) VALUES (55, 'Complete Nightly process skipped' );
insert into LOAN_EXCEPTION_CODE_LOOKUP( EXCEPTION_CODE_ID, DESCRIPTION) VALUES (56, 'Account Status change function skipped' );
insert into LOAN_EXCEPTION_CODE_LOOKUP( EXCEPTION_CODE_ID, DESCRIPTION) VALUES (57, 'Non Accrual Loan check skipped' );
insert into LOAN_EXCEPTION_CODE_LOOKUP( EXCEPTION_CODE_ID, DESCRIPTION) VALUES (58, 'Bank Earning function skipped' );
insert into LOAN_EXCEPTION_CODE_LOOKUP( EXCEPTION_CODE_ID, DESCRIPTION) VALUES (59, 'Interest Rate Change Function skipped' );
insert into LOAN_EXCEPTION_CODE_LOOKUP( EXCEPTION_CODE_ID, DESCRIPTION) VALUES (60, 'Accrued interest function skipped' );
insert into LOAN_EXCEPTION_CODE_LOOKUP( EXCEPTION_CODE_ID, DESCRIPTION) VALUES (61, 'Insurance function skipped' );
insert into LOAN_EXCEPTION_CODE_LOOKUP( EXCEPTION_CODE_ID, DESCRIPTION) VALUES (62, 'Dealer function skipped' );
insert into LOAN_EXCEPTION_CODE_LOOKUP( EXCEPTION_CODE_ID, DESCRIPTION) VALUES (63, 'Billing function skipped' );
insert into LOAN_EXCEPTION_CODE_LOOKUP( EXCEPTION_CODE_ID, DESCRIPTION) VALUES (64, 'Past due calculation & late charge assessment skipped' );
insert into LOAN_EXCEPTION_CODE_LOOKUP( EXCEPTION_CODE_ID, DESCRIPTION) VALUES (65, 'Deferred income/expense function skipped' );
insert into LOAN_EXCEPTION_CODE_LOOKUP( EXCEPTION_CODE_ID, DESCRIPTION) VALUES (66, 'Statement Cycling function skipped' );
insert into LOAN_EXCEPTION_CODE_LOOKUP( EXCEPTION_CODE_ID, DESCRIPTION) VALUES (67, 'Calculate Aggregate, Avg. balance function skipped' );
insert into LOAN_EXCEPTION_CODE_LOOKUP( EXCEPTION_CODE_ID, DESCRIPTION) VALUES (68, 'Clean up function skipped' );
insert into LOAN_EXCEPTION_CODE_LOOKUP( EXCEPTION_CODE_ID, DESCRIPTION) VALUES (69, 'Month/Year End Function skipped' );





