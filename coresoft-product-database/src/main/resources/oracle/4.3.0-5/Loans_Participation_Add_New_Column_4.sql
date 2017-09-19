-- Added new column PARTICIPATION_PERCENTAGE in Loan_participation table for storing participation percentage

alter table loan_participation add(PARTICIPATION_PERCENTAGE NUMBER(20,5) DEFAULT 0 NOT NULL);