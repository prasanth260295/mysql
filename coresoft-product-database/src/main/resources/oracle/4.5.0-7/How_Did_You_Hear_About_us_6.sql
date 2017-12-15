CREATE TABLE "HOW_DID_YOU_HEAR_ABT_US" 
(
      "UNIQUE_ID" NUMBER(30,0) NOT NULL ENABLE, 
	    "INFORMATION" VARCHAR2(100),
      "ENABLE" NUMBER(2),
   CONSTRAINT "HOW_DID_YOU_HEAR_ABT_US_PK" PRIMARY KEY ("UNIQUE_ID") ENABLE);
   
create sequence HOW_DID_YOU_HEAR_ABT_US_SEQ minvalue 1 maxvalue 9999999999 increment by 1 start with 1;

select * from how_did_you_hear_abt_us;
Insert into how_did_you_hear_abt_us (UNIQUE_ID,INFORMATION,ENABLE) values (1,'Existing Customer',1);
Insert into how_did_you_hear_abt_us (UNIQUE_ID,INFORMATION,ENABLE) values (2,'Referred by Customer',1);
Insert into how_did_you_hear_abt_us (UNIQUE_ID,INFORMATION,ENABLE) values (3,'Referred by Banker',1);
Insert into how_did_you_hear_abt_us (UNIQUE_ID,INFORMATION,ENABLE) values (4,'Advertising',1);
Insert into how_did_you_hear_abt_us (UNIQUE_ID,INFORMATION,ENABLE) values (5,'Drive By',1);