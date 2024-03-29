CREATE TABLE CUSTOMER_BOND_REDEMPTION
   (
     UNIQUE_ID 					NUMBER(10,0) NOT NULL,
     BOND_SERIES				VARCHAR2(30 BYTE) NOT NULL,
     BOND_NUMBER				VARCHAR2(30 BYTE) NOT NULL,
     BOND_ISSUE_DATE			DATE NOT NULL,
     BOND_REDEMPTION_DATE		DATE NOT NULL,
     BOND_VALUE					NUMBER(20,5) NOT NULL,
     INTEREST_AMOUNT			NUMBER(20,5) NOT NULL,
     UNREMITTED_WITHHELD_AMOUNT	NUMBER(20,5),
     REMARKS					VARCHAR2(40 BYTE),
     LAST_REMITTED_DATE			DATE,
     LAST_REMITTED_AMOUNT		NUMBER(20,5),
     CUSTOMER_ID				NUMBER(15,0),
     CONSTRAINT "CUSTOMER_BOND_REDEMPTION_PK" PRIMARY KEY ("UNIQUE_ID"),
     CONSTRAINT "CUSTOMER_BOND_REDEMPTION__FK1" FOREIGN KEY
     ("CUSTOMER_ID") REFERENCES PARTY_INSTITUTION_ASSOCIATION
    (UNIQUE_ASSOCIATION_ID) ON
    DELETE CASCADE ENABLE);