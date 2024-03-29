drop table AH_LIFE_INSURANCE;
drop table AIR_CRAFTS_22;
drop table ALTERNATE_PAYMENT_SCHEDULE;
drop table AMORTIZED_INTEREST_CALCULATION;
drop table AMOUNT_ENTRY;
drop table ANCHORED_SHOP_CENTRE_08;
drop table ARINVENTORY_15;
drop table ARM_TYPE;
drop table ASSIGNED_BANK;
drop table ASSIGNED_BRANCH;
drop table AUTO_DRAFT;
drop table EXAMINER_CLASSIFICATION;
drop table BILLING_NOTICE;
drop table BOATS_21;
drop table BORROWER;
drop table BROUGHT_SOLD_PARTICIPATION;
drop table CALL_INFORMATION;
drop table CALL_REPORT_CODE;
drop table CAMPERS_RV_24;
drop table CAR_TRUCKS_20;
drop table CBT_LOAN;
drop table CHURCHES_11;
drop table CO_BORROWER;
drop table COLLATERAL_NEW;
drop table COLLATERAL_APPRAISAL_NEW;
drop table COLLATERAL_CODE;
drop table COLLATERAL_TYPE;
drop table CO_MAKER;
drop table COMMERCIAL_BUILD_12;
drop table COUPON_BOOK;
drop table CREDIT_LINE_FEE_CODE;
drop table CUSTOMER_ROLE;
drop table DEALER_AGENCY; 
drop table DEALER_PARTICIPATION;
drop table DEFFERED_INCOME_EXPENSE;
drop table DEMAND_NOTE_SCHEDULE;
--drop table DEPOSIT_COLLATERAL_NEW;
drop table DEPOSIT_COLLATERAL_APPRAISAL;
drop table DEPOSIT_COLL_CODE;
drop table DISC_INTEREST_CALCULATION;
drop table DISTRIBUTION_HEAD;
drop table EARNING_EXPENSES_HISTORY;
drop table ENDORSER;
drop table EUIPMENT_17;
drop table ESCROW_DETAIL;
drop table ESCROW_DISBURSEMENT;
drop table ESCROW_OTHER;
--drop table ESCROW_SUMMARY;
drop table EXTERNAL_AGENCY;
drop table FIXED_AMOUNT_PENALTY;
drop table FIXED_LOAN_INTEREST;
drop table FLAT_ANNUAL_FEE;
drop table FLAT_INTEREST_RATE_PENALTY;
drop table FLOAT_INTEREST_RATE_PENALTY;
drop table FLOAT_PENALTY_RATE;
drop table FORM_LOANS_19;
drop table FURNITURE_FIXTURE_16;
drop table GENERAL_LEDGER_ENTRIES;
drop table GENERAL_LEDGER_ENTRY;
drop table GL_ALLOCATION;
drop table GUARANTOR;
drop table HAZARD_INSURANCE_AGENCY;
drop table HEALTH_CARE_FACILITIES_13;
drop table HEQ;
drop table HOME_EQUITY_06;
drop table HOMEOWNERS_CONDO_ASS_AGENCY;
drop table HOTEL_07;
drop table INSURANCE_27; 
drop table INSURANCE_ESCROW;
drop table IRREGULAR_PAYMENT_SCHEDULE;
drop table LATE_CHARGE_NEW;
drop table LIFE_AH_INSURANCE_AGENCY;
drop table LOAN_ADVANCE;
drop table LOAN_CONTRACT;
drop table LOAN_CUSTOMER_ROLE;
drop table LOAN_OFFICER;
drop table LOAN_OFFICER_TRANSFER;
drop table LOAN_PARTICIPATION;
drop table LOAN_PRODUCT;
--drop table LOAN_PURPOSE;
drop table LOAN_REPAYMENT;
drop table LOC;
drop table LOTS_LAND_04;
drop table MOBILE_FAMILY_02; 
drop table MOBILE_HOME_PARK_10;
drop table MONTHLY_INT_RATE_PENALTY;
drop table MOTOR_CYCLE_ATV_23;
drop table MULTI_FAMILY_03;
--drop table MUNICIPAL_SECURED_29;
--drop table MUNICIPAL_UNSECURED_05;
--drop table NEW_INTEREST_RATE;
--drop table NEW_SCHEDULE_PAYMENT;
drop table NO_CREDIT_LINE_FEE;
drop table NON_BORROWER;
drop table NO_PENALTY;
drop table NOTE_REC_ASSES_OF_LEASE_28;
drop table OFFICE_BUILDING_09;
--drop table OTHER_COLLATERAL_NEW;
drop table OTHER_COLL_APPRAISAL;
drop table OTHER_COLL_CODE;
drop table OTHER_COMMERCIAL_14;
drop table OVER_ROAD_TRACTORTRAILER_18;
drop table PARTICIPANT_BANK;
drop table PAST_DUE_NOTICE_SCHEDULE;
drop table PAST_DUE_PARAMETERS;
drop table PAST_DUE_PERIOD;
drop table PAYMENT_ADJUSTMENT;
drop table PAYMENT_ADJUSTMENT_HISTORY;
drop table PAYMENT_SCHEDULE;
drop table PAYMENT_SCHEDULE_ITEM;
drop table PAYOFF;
drop table PENALTY;
drop table PERCENTAGE_BASIS;
drop table PMI_AGENCY;
drop table POSTING_SEQUENCE;
drop table PROPERTY_COLLATERAL_NEW;
drop table PROPERTY_COLL_APPRAISAL_NEW;
drop table PROPERTY_COLL_CODE;
drop table RATE_ADJUSTMENT;
drop table RATE_CHANGE_HISTORY;
drop table RATE_INDEX;
drop table RATE_INDEX_HISTORY;
drop table REGION;
drop table REGULAR_PAYMENT_SCHEDULE;
drop table REPAYMENT_MODE; 
drop table SAVING_CD_25;
drop table SIMPLE_INTEREST_CALCULATION;
drop table SINGLE_FAMILY_01;
drop table SINGLE_PAY_SCHEDULE;
drop table STATEMENT;
drop table STOCK_26;
--drop table STOCK_COLLATERAL_NEW;
drop table STOCK_COLL_APPRAISAL;
drop table STOCK_COLL_CODE;
drop table TAX_AGENCY;
--drop table TAX_ESCROW;
--drop table TITLE_COLLATERAL_NEW;
drop table TITLE_COLLL_APPRAISAL;
drop table TITLE_COLL_CODE;
drop table UNSECURE_LOAN_99;
drop table VARIABLE_LOAN_INTEREST;
drop table VARIABLE_TYPE;

ALTER TABLE VARIABLE_INTEREST_RATE 
	DROP CONSTRAINT VIR_ACCID_FK; 
DROP TABLE VARIABLE_INTEREST_RATE; 
DROP TABLE TITLED_COLLATERAL; 
ALTER TABLE RENEWALS 
	DROP CONSTRAINT REN_ACCID_FK; 
DROP TABLE RENEWALS; 
DROP TABLE PROPERTY_COLLATERAL; 
DROP TABLE LOAN_NON_ACCRUAL; 
DROP TABLE LOAN_MESSAGES; 
--DROP TABLE LOAN_COUPON_BOOK;
ALTER TABLE LOAN_ACCOUNT_REBATE 
	DROP CONSTRAINT LACCREBATE_PK;
DROP TABLE LOAN_ACCOUNT_REBATE; 
DROP TABLE LOANACCOUNT_COLLATERAL_MAPPING; 
DROP TABLE INSURANCE_TAX; 
DROP TABLE ESCROW_PAYEE; 
DROP TABLE ESCROW_DUES; 
DROP TABLE COLLATERAL_UCCEXPIRATION_DATE; 
DROP TABLE COLLATERAL_APPRAISAL;
DROP TABLE BILL_MAINTENANCE_LOG; 
DROP TABLE CLASSCODE_COLLATERAL; 
DROP TABLE EXTENSIONS; 
DROP TABLE LOAN_TRANS_CODE_LOOKUP; 
DROP TABLE CIF_LOAN_CLASS_CODE_LOOKUP; 
DROP TABLE EXAM_CLASSIFICATION_LKP; 
DROP TABLE LOAN_PURPOSE_LOOKUP; 
DROP TABLE RATE_INDEX_LKP;
DROP TABLE LOAN_TYPE_LOOKUP; 
DROP TABLE ESCROW_HEAD; 
DROP TABLE ESCROW_GRANTEE; 
DROP TABLE STOCK_COLLATERAL cascade constraint; 
DROP TABLE COLLATERAL;
drop table ASSET;
DROP TABLE LATE_CHARGE cascade constraint;
DROP TABLE REPAYMENT_MODE_LKP CASCADE CONSTRAINT;
DROP TABLE LOAN_CALL_REPORT_LKP CASCADE CONSTRAINT; 
DROP TABLE COLLATERAL_TYPE_LOOKUP CASCADE CONSTRAINT; 
--DROP TABLE CALL_REPORT_LKP CASCADE CONSTRAINT; 
DROP TABLE LOAN_TYPE_PARAMETER CASCADE CONSTRAINT;
DROP TABLE LOAN_FREQUENCY_LOOKUP CASCADE CONSTRAINT;  
DROP TABLE ESCROW_ACCOUNT CASCADE CONSTRAINT; 
DROP TABLE ESCROW_TRANSACTION CASCADE CONSTRAINT; 
