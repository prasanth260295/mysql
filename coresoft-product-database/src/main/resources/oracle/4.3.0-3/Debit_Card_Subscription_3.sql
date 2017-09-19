
ALTER TABLE DEBITCARD_SUBSCRIPTION modify ORDERED_FROM VARCHAR2(30 BYTE);

--ALTER TABLE DEBITCARD_SUBSCRIPTION ADD CONSTRAINT BRANCH_FK FOREIGN KEY(ORDERED_FROM) REFERENCES BRANCH(UNIQUE_ID);

ALTER TABLE DEBITCARD_SUBSCRIPTION ADD CONSTRAINT USER_FK FOREIGN KEY(PRIMARY_USER_ID) REFERENCES DEBITCARD_USER(USER_ID);


