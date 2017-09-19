create table transaction_group (
    group_id	       NUMBER(10) ,
    INSTITUTION_ID    VARCHAR2(10),
    group_name        VARCHAR2(200) NULL,
    group_amount        NUMBER(10,2),
    created_date        DATE null,
    posted_date         DATE null,
    posted_date1         DATE null,
    CHECK_DATE          DATE NULL,
    status              NUMBER(1)
);

create table transaction_group_entry (
    id             NUMBER(10),
    group_id       NUMBER(10),
    account_number VARCHAR2(30),
    amount         NUMBER(10,2),
    trancode       varchar2(10),
    trancode_desc  varchar2(100),
    effective_date  DATE,
    DEPOSIT_ACCOUNT_NUMBER VARCHAR(20),
    comments       varchar2(100), 
    STATUS         NUMBER(1),
    MESSAGE        VARCHAR2(200),
    PRINCIPAL                  NUMBER(20,5),
    INTEREST                   NUMBER(20,5),
    ESCROW                     NUMBER(20,5),
    LATE_CHARGES               NUMBER(20,5),
    OTHER_FEES                 NUMBER(20,5),
    CREDIT_LIFE                NUMBER(20,5),
    SERVICE_FEE                NUMBER(20,5),
    AH_LIFE                     NUMBER(20,5)
);

CREATE SEQUENCE TRAN_GROUP_ENTRY_ID_SEQ
    INCREMENT BY 1
    START WITH 101
    MAXVALUE 999999999
    NOMINVALUE
    NOCYCLE
    CACHE 20
    NOORDER;