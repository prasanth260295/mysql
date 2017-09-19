CREATE SEQUENCE INSTITUTION_SEQ START WITH 1001 INCREMENT BY 1;

CREATE SEQUENCE REGION_SEQ START WITH 101 INCREMENT BY 1;

ALTER TABLE INSTITUTION
RENAME COLUMN INSTITUTION_ID TO INSTITUTION_UNIQUE_ID;

ALTER TABLE institution
ADD INSTITUTION_ID VARCHAR2(30);

CREATE TABLE REGION
  (
    REGION_UNIQUE_ID     VARCHAR2(30) NOT NULL ENABLE,
    REGION_ID      VARCHAR2(30) NOT NULL ENABLE,
    REGION_NAME    VARCHAR2(150),
    INSTITUTION_ID VARCHAR2(30), 
    CONSTRAINT REGION_UNIQUE_ID_PK PRIMARY KEY(REGION_UNIQUE_ID)
  );

ALTER TABLE REGION ADD CONSTRAINT INSTITUTION_INSTUID_FK FOREIGN KEY(INSTITUTION_ID) REFERENCES INSTITUTION(INSTITUTION_UNIQUE_ID);

ALTER TABLE BRANCH
ADD REGION_ID VARCHAR2(30);

ALTER TABLE BRANCH ADD CONSTRAINT REGION_REGUID_FK FOREIGN KEY(REGION_ID) REFERENCES REGION(REGION_UNIQUE_ID);

ALTER TABLE LOAN_ACCOUNT DROP CONSTRAINT LA_OB_FK;
ALTER TABLE DEPOSIT_ACCOUNT DROP CONSTRAINT DA_ASSBR_FK;
ALTER TABLE DEPOSIT_ACCOUNT DROP CONSTRAINT DA_BID_FK;
--ALTER TABLE TAX_PAYMENT_BUSINESS_EVENT DROP CONSTRAINT TAX_PAY_BUS_EV_ABID_FK;
ALTER TABLE EMPLOYEE DROP CONSTRAINT EMP_BID_IID_FK;
ALTER TABLE ACCOUNT_OPENING_EVENT DROP CONSTRAINT ACC_OP_EV_BID_FK;
ALTER TABLE BRANCH_ADDRESS DROP CONSTRAINT BA_BRID_FK;
ALTER TABLE BRANCH_CONTACT DROP CONSTRAINT BC_BID_IID_FK;
ALTER TABLE BRANCH_INT_CODES DROP CONSTRAINT BR_INT_CODES_BID_FK;
ALTER TABLE BRANCH_ROLE DROP CONSTRAINT BRR_BID_IID_FK;
ALTER TABLE DEPOSIT_ACCOUNT_TRANSACTIONS DROP CONSTRAINT DAT_BID_IID_FK;
ALTER TABLE APPLICATION DROP CONSTRAINT APPLICATION_BRANCH_FK;
ALTER TABLE EVENT DROP CONSTRAINT EVENT_BRANCH_ID_FK;

ALTER TABLE BRANCH DROP CONSTRAINT BRANCH_PK;

ALTER TABLE BRANCH 
ADD CONSTRAINT BRANCH_UID_INSTID_COMP_PK PRIMARY KEY (UNIQUE_ID, INSTITUTION_ID);

ALTER TABLE DEPOSIT_ACCOUNT
ADD INSTITUTION_ID VARCHAR2(30);

ALTER TABLE LOAN_ACCOUNT
ADD INSTITUTION_ID VARCHAR2(30);

ALTER TABLE branch_address
ADD INSTITUTION_ID VARCHAR2(30);

ALTER TABLE TAX_PAYMENT_BUSINESS_EVENT
ADD INSTITUTION_ID VARCHAR2(30);

ALTER TABLE EVENT
ADD INSTITUTION_ID VARCHAR2(30);

ALTER TABLE DEPOSITS_LOANS
ADD REGION_ID VARCHAR2(30);

ALTER TABLE BRANCH_INT_CODES
ADD INSTITUTION_ID VARCHAR2(30);

ALTER TABLE ACCOUNT 
ADD OLD_INSTITUTION_ID VARCHAR2(30);

ALTER TABLE PARTY_INSTITUTION_ASSOCIATION 
ADD OLD_INSTITUTION_ID VARCHAR2(30);

alter table cabinet add CONSTRAINT FK_CABINET_UNIQUE FOREIGN KEY (UNIQUE_ID,INSTITUTION_ID) REFERENCES BRANCH (UNIQUE_ID,INSTITUTION_ID);

alter table DEBITCARD_SUBSCRIPTION add INSTITUTION_ID VARCHAR2(30);

ALTER TABLE DEBITCARD_SUBSCRIPTION ADD CONSTRAINT BRANCH_FK FOREIGN KEY(ORDERED_FROM,INSTITUTION_ID) REFERENCES BRANCH(UNIQUE_ID,INSTITUTION_ID);

ALTER TABLE DEPOSIT_ACCOUNT ADD CONSTRAINT DA_ASSBR_FK FOREIGN KEY (ASSIGNED_BRANCH,INSTITUTION_ID) REFERENCES BRANCH (UNIQUE_ID, INSTITUTION_ID);

ALTER TABLE DEPOSIT_ACCOUNT ADD CONSTRAINT DA_BID_FK FOREIGN KEY (BRANCH_ID,INSTITUTION_ID) REFERENCES BRANCH (UNIQUE_ID, INSTITUTION_ID);

ALTER TABLE ACCOUNT_OPENING_EVENT ADD CONSTRAINT ACC_OP_EV_BID_FK FOREIGN KEY (BRANCH_ID,INSTITUTION_ID) REFERENCES BRANCH (UNIQUE_ID, INSTITUTION_ID);

ALTER TABLE BRANCH_INT_CODES ADD CONSTRAINT BR_INT_CODES_BID_FK FOREIGN KEY (BRANCH_ID,INSTITUTION_ID) REFERENCES BRANCH (UNIQUE_ID, INSTITUTION_ID);

ALTER TABLE DEPOSIT_ACCOUNT_TRANSACTIONS ADD CONSTRAINT DAT_BID_IID_FK FOREIGN KEY (BRANCH_ID,INSTITUTION_ID) REFERENCES BRANCH (UNIQUE_ID, INSTITUTION_ID);

ALTER TABLE APPLICATION ADD CONSTRAINT APPLICATION_BRANCH_FK FOREIGN KEY (BRANCH,INSTITUTION_ID) REFERENCES BRANCH (UNIQUE_ID, INSTITUTION_ID);

ALTER TABLE LOAN_ACCOUNT ADD CONSTRAINT LA_OB_FK FOREIGN KEY (OPENING_BRANCH,INSTITUTION_ID) REFERENCES BRANCH (UNIQUE_ID, INSTITUTION_ID);

ALTER TABLE EMPLOYEE ADD CONSTRAINT EMP_BID_IID_FK FOREIGN KEY (BRANCH_ID,INSTITUTION_ID) REFERENCES BRANCH (UNIQUE_ID, INSTITUTION_ID);

ALTER TABLE BRANCH_CONTACT ADD CONSTRAINT BC_BID_IID_FK FOREIGN KEY (BRANCH_ID,INSTITUTION_ID) REFERENCES BRANCH (UNIQUE_ID, INSTITUTION_ID);

ALTER TABLE BRANCH_ROLE ADD CONSTRAINT BRR_BID_IID_FK FOREIGN KEY (BRANCH_ID,INSTITUTION_ID) REFERENCES BRANCH (UNIQUE_ID, INSTITUTION_ID);




