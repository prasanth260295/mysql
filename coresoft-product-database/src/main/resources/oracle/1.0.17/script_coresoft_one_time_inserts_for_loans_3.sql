INSERT INTO PARTY_ROLE_TYPE (ROLE_TYPE_ID,ROLE_TYPE_NAME) VALUES ('1','Primary Owner');
INSERT INTO PARTY_ROLE_TYPE (ROLE_TYPE_ID,ROLE_TYPE_NAME) VALUES ('3','ENDORSER');
INSERT INTO PARTY_ROLE_TYPE (ROLE_TYPE_ID,ROLE_TYPE_NAME) VALUES ('5','GUARANTOR');
INSERT INTO PARTY_ROLE_TYPE (ROLE_TYPE_ID,ROLE_TYPE_NAME) VALUES ('6','Possible Owner');
INSERT INTO PARTY_ROLE_TYPE (ROLE_TYPE_ID,ROLE_TYPE_NAME) VALUES ('7','Possible Beneficiary');
INSERT INTO PARTY_ROLE_TYPE (ROLE_TYPE_ID,ROLE_TYPE_NAME) VALUES ('8','Account Owner');
INSERT INTO PARTY_ROLE_TYPE (ROLE_TYPE_ID,ROLE_TYPE_NAME) VALUES ('9','Beneficiary');
INSERT INTO PARTY_ROLE_TYPE (ROLE_TYPE_ID,ROLE_TYPE_NAME) VALUES ('10','Interested Party');
INSERT INTO PARTY_ROLE_TYPE (ROLE_TYPE_ID,ROLE_TYPE_NAME) VALUES ('11','Instrument Holder');
INSERT INTO PARTY_ROLE_TYPE (ROLE_TYPE_ID,ROLE_TYPE_NAME) VALUES ('12','Possible Instrument Holder');
INSERT INTO PARTY_ROLE_TYPE (ROLE_TYPE_ID,ROLE_TYPE_NAME) VALUES ('13','BORROWER');
INSERT INTO PARTY_ROLE_TYPE (ROLE_TYPE_ID,ROLE_TYPE_NAME) VALUES ('14','CO_BORROWER');
INSERT INTO PARTY_ROLE_TYPE (ROLE_TYPE_ID,ROLE_TYPE_NAME) VALUES ('15','CO_MAKER');
INSERT INTO PARTY_ROLE_TYPE (ROLE_TYPE_ID,ROLE_TYPE_NAME) VALUES ('16','Recipient');
INSERT INTO PARTY_ROLE_TYPE (ROLE_TYPE_ID,ROLE_TYPE_NAME) VALUES ('22','INTERESTED_PTY');



INSERT INTO ACCOUNT_TYPE_LOOKUP(ACCOUNT_TYPE_ID, ACCOUNT_TYPE) VALUES(204, 'Commercial');
INSERT INTO ACCOUNT_TYPE_LOOKUP(ACCOUNT_TYPE_ID, ACCOUNT_TYPE) VALUES(206, 'Construction');
INSERT INTO ACCOUNT_TYPE_LOOKUP(ACCOUNT_TYPE_ID, ACCOUNT_TYPE) VALUES(N'1', N'User Defined Loan');

INSERT INTO RATE_INDEX_LKP(CODE,DESCRIPTION,RATE_CHANGE_DATE,CURRENT_INDEX_RATE)
VALUES(1,'1 YEAR US TREAS SECURITIES',TO_DATE('07/15/2008','MM/DD/YYYY'),0.0225000);
 
INSERT INTO RATE_INDEX_LKP(CODE,DESCRIPTION,RATE_CHANGE_DATE,CURRENT_INDEX_RATE)
VALUES(2,'6-MONTH TREAS AUCTION AVERAGE',TO_DATE('07/15/2008','MM/DD/YYYY'),0.0200000);
 
INSERT INTO RATE_INDEX_LKP(CODE,DESCRIPTION,RATE_CHANGE_DATE,CURRENT_INDEX_RATE)
VALUES(3,'3-YR TREAS BILL',TO_DATE('07/15/2008','MM/DD/YYYY'),0.0277000);
 
INSERT INTO RATE_INDEX_LKP(CODE,DESCRIPTION,RATE_CHANGE_DATE,CURRENT_INDEX_RATE)
VALUES(4,'FHLBB RATE',TO_DATE('11/15/1995','MM/DD/YYYY'),0.0503000);

INSERT INTO RATE_INDEX_LKP(CODE,DESCRIPTION,RATE_CHANGE_DATE,CURRENT_INDEX_RATE)
VALUES(5,'BANK COMMERCIAL RATE',TO_DATE('03/26/2008','MM/DD/YYYY'),0.0650000);
 
INSERT INTO RATE_INDEX_LKP(CODE,DESCRIPTION,RATE_CHANGE_DATE,CURRENT_INDEX_RATE)
VALUES(6,'PRIME RATE',TO_DATE('04/30/2008','MM/DD/YYYY'),0.0500000);
 
INSERT INTO RATE_INDEX_LKP(CODE,DESCRIPTION,RATE_CHANGE_DATE,CURRENT_INDEX_RATE)
VALUES(7,'2-YEAR TREASURY SECURITY',TO_DATE('06/19/2001','MM/DD/YYYY'),0.0407000);
 
INSERT INTO RATE_INDEX_LKP(CODE,DESCRIPTION,RATE_CHANGE_DATE,CURRENT_INDEX_RATE)
VALUES(8,'CB&T Savings Rate',TO_DATE('12/31/2004','MM/DD/YYYY'),0.0100000);
 
INSERT INTO RATE_INDEX_LKP(CODE,DESCRIPTION,RATE_CHANGE_DATE,CURRENT_INDEX_RATE)
VALUES(10,'10-YEAR TREASURY SECURITY',TO_DATE('07/15/2008','MM/DD/YYYY'),0.0390000);