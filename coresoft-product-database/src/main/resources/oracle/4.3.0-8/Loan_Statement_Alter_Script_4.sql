alter table loan add(STATEMENT_CREDIT_AMOUNT  NUMBER(20,5) NULL,STATEMENT_DEBIT_AMOUNT  NUMBER(20,5) NULL,STATEMENT_NO_OF_CREDITS  NUMBER(20,5) DEFAULT 0,
STATEMENT_NO_OF_DEBITS NUMBER(20,5) DEFAULT 0);