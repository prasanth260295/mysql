CREATE TABLE LOAN_MOST_LIKELY_ATIVITIES (
    UNIQUE_ID               NUMBER(30) NOT NULL ,   
    INSTITUTION_ID          VARCHAR2(30),
    BRANCH_ID               VARCHAR2(30) ,
    USER_ID                 VARCHAR2(50) ,
    LOG_DATE                DATE       ,  
    ACTIVITY_NAME           VARCHAR2(100),
    CONSTRAINT LOAN_MOST_LIKELY_ATIVITIES_PK PRIMARY KEY (UNIQUE_ID)
);
      
CREATE SEQUENCE LOAN_MOST_LIKELY_ATIVITIES_SEQ INCREMENT BY 1 START WITH 1 NOMAXVALUE NOMINVALUE NOCYCLE ORDER;

Insert into LOAN_MOST_LIKELY_ATIVITIES (UNIQUE_ID,INSTITUTION_ID,BRANCH_ID,USER_ID,LOG_DATE,ACTIVITY_NAME) values (5,'1001','280','AMK',to_date('02-JAN-17 00:00:00','DD-MON-RR HH24:MI:SS'),'Transactions');
Insert into LOAN_MOST_LIKELY_ATIVITIES (UNIQUE_ID,INSTITUTION_ID,BRANCH_ID,USER_ID,LOG_DATE,ACTIVITY_NAME) values (1,'1001','280','testpolicy30',to_date('02-JAN-17 00:00:00','DD-MON-RR HH24:MI:SS'),'Transactions');
Insert into LOAN_MOST_LIKELY_ATIVITIES (UNIQUE_ID,INSTITUTION_ID,BRANCH_ID,USER_ID,LOG_DATE,ACTIVITY_NAME) values (2,'1001','280','testpolicy30',to_date('02-JAN-17 00:00:00','DD-MON-RR HH24:MI:SS'),'Escrow Analysis');
Insert into LOAN_MOST_LIKELY_ATIVITIES (UNIQUE_ID,INSTITUTION_ID,BRANCH_ID,USER_ID,LOG_DATE,ACTIVITY_NAME) values (3,'1001','280','testpolicy30',to_date('02-JAN-17 00:00:00','DD-MON-RR HH24:MI:SS'),'Payoff Calculation');
Insert into LOAN_MOST_LIKELY_ATIVITIES (UNIQUE_ID,INSTITUTION_ID,BRANCH_ID,USER_ID,LOG_DATE,ACTIVITY_NAME) values (4,'1001','280','testpolicy30',to_date('02-JAN-17 00:00:00','DD-MON-RR HH24:MI:SS'),'Collection-Add Comment');
Insert into LOAN_MOST_LIKELY_ATIVITIES (UNIQUE_ID,INSTITUTION_ID,BRANCH_ID,USER_ID,LOG_DATE,ACTIVITY_NAME) values (6,'1001','280','AMK',to_date('02-JAN-17 00:00:00','DD-MON-RR HH24:MI:SS'),'Escrow Analysis');
Insert into LOAN_MOST_LIKELY_ATIVITIES (UNIQUE_ID,INSTITUTION_ID,BRANCH_ID,USER_ID,LOG_DATE,ACTIVITY_NAME) values (7,'1001','280','AMK',to_date('02-JAN-17 00:00:00','DD-MON-RR HH24:MI:SS'),'Payoff Calculation');
Insert into LOAN_MOST_LIKELY_ATIVITIES (UNIQUE_ID,INSTITUTION_ID,BRANCH_ID,USER_ID,LOG_DATE,ACTIVITY_NAME) values (8,'1001','280','AMK',to_date('02-JAN-17 00:00:00','DD-MON-RR HH24:MI:SS'),'Collection-Add Comment');
Insert into LOAN_MOST_LIKELY_ATIVITIES (UNIQUE_ID,INSTITUTION_ID,BRANCH_ID,USER_ID,LOG_DATE,ACTIVITY_NAME) values (9,'1001','280','testpolicy30',to_date('02-JAN-17 00:00:00','DD-MON-RR HH24:MI:SS'),'Collection-Inquiry');
Insert into LOAN_MOST_LIKELY_ATIVITIES (UNIQUE_ID,INSTITUTION_ID,BRANCH_ID,USER_ID,LOG_DATE,ACTIVITY_NAME) values (10,'1001','280','RamirezC',to_date('02-JAN-17 00:00:00','DD-MON-RR HH24:MI:SS'),'Collection-Inquiry');
