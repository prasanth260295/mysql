CREATE TABLE COLLECTION_AUTOMATED_COMMENTS 
   (ID NUMBER(15,5) NOT NULL ENABLE, 
	COMMENTS_DESCRIPTION NVARCHAR2(300), 
	COMMENTS_ID NVARCHAR2(50), 
	Comment_Status Number(5),
	 CONSTRAINT AUTOMATED_ID_PK PRIMARY KEY (ID));
--------------------------------------
	 
	 CREATE SEQUENCE COLLECTION_AUTO_COMMENTS_SEQ START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;