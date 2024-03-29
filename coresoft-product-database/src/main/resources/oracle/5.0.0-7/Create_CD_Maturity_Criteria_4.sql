CREATE table CD_MATURITY_CRITERIA
(UNIQUE_ID NUMBER(20),
LOW_RANGE VARCHAR2(50),
HIGH_RANGE VARCHAR2(50),
LABEL VARCHAR2(50),
CONSTRAINT "CD_MATURITY_CRI_PK" PRIMARY KEY ("UNIQUE_ID") ENABLE);

CREATE SEQUENCE CD_MATURITY_SEQ MINVALUE 1 MAXVALUE 9999999999 INCREMENT BY 1 START WITH 1;