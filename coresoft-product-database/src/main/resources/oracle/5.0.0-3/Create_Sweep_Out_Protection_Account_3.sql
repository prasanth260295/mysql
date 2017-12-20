CREATE TABLE "SWEEP_OUT_PROTECTING_ACCOUNT"
   (    "ID" NUMBER(20,0),
    "PRIORITY" NUMBER(2,0),
    "SWEEP_INSTRUCTION_ID" NUMBER(20,0),
    "MINIMUM_SWEEP_AMOUNT" NUMBER(20,5),
    "MAXIMUM_SWEEP_AMOUNT" NUMBER(20,5),
    "TARGET_ACCOUNT_CAPACITY" NUMBER(20,5),
    "SWEEP_VIOLATION_RULE" VARCHAR2(70 BYTE),
    "ACCOUNT_ID" VARCHAR2(30 BYTE),
    "LAST_TRAVERSING_DATE" DATE,
    "LAST_EXECUTED_DATE" DATE,
     CONSTRAINT "SWEEP_OUT_PROTECTING_ACC_PK_DP" PRIMARY KEY ("ID"),
     CONSTRAINT "SWEEP_INSTRUC_ID_FK" FOREIGN KEY ("SWEEP_INSTRUCTION_ID")
      REFERENCES "SWEEP_INSTRUCTION" ("SWEEP_ID") );
    
CREATE SEQUENCE  SWEEP_OUT_PROTECTION_ID_SEQ  MINVALUE 1 MAXVALUE 999999999999 INCREMENT BY 1 START WITH 1;