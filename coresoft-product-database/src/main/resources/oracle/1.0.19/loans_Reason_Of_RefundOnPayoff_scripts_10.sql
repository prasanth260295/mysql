ALTER TABLE LOAN_ACCOUNT_HISTORY_ITEM ADD REFUND_TYPE_ON_PAYOFF NUMBER;


create table ReasonOfRefundOnPayoff (
id number (5,0) unique,
Code number(5,0) ,
Description varchar2(100),
CONSTRAINT ReasonOfRefundOnPayoff_PRIMARY PRIMARY KEY(Code));


------inserting values
insert into ReasonOfRefundOnPayoff (id, Code, Description) values ('0', '0', 'NEGATIVE INTEREST DISTRIBUTION');
insert into ReasonOfRefundOnPayoff (id, Code, Description) values ('1', '1', 'NEGATIVE ESCROW DISTRIBUTION'); 
insert into ReasonOfRefundOnPayoff (id, Code, Description) values ('2', '2', 'NEGATIVE LIFE_AH DISTRIBUTION');
insert into ReasonOfRefundOnPayoff (id, Code, Description) values ('3', '3', 'POSITIVE PRINCIPAL BALANCE AFTER PAYOFF DUE TO PAYOFF TOLERANCE');
insert into ReasonOfRefundOnPayoff (id, Code, Description) values ('4', '4', 'POSITIVE BANK REBATE');
insert into ReasonOfRefundOnPayoff (id, Code, Description) values ('5', '5', 'POSITIVE LIFE INSURANCE REBATE');
insert into ReasonOfRefundOnPayoff (id, Code, Description) values ('6', '6', 'POSITIVE AH INSURANCE REBATE');
insert into ReasonOfRefundOnPayoff (id, Code, Description) values ('7', '7', 'POSITIVE DEALER RESERVE REBATE');
insert into ReasonOfRefundOnPayoff (id, Code, Description) values ('8', '8', 'POSITIVE DEALER HOLDBACK REBATE');
insert into ReasonOfRefundOnPayoff (id, Code, Description) values ('9', '9', 'POSITIVE COLLATERAL INS REBATE');
insert into ReasonOfRefundOnPayoff (id, Code, Description) values ('10','10', 'POSITIVE SP RESERVE 1 REBATE');
insert into ReasonOfRefundOnPayoff (id, Code, Description) values ('11','11', 'POSITIVE SPECIAL RESERVE 2 REBATE');
