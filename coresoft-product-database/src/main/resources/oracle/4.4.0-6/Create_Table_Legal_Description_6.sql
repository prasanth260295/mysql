CREATE TABLE LEGAL_DESCRIPTION (
    ID                      	NUMBER(10),
    ACCOUNT_NUMBER          	VARCHAR2(10),
    BUSINESS_DATE        		DATE,
    CASE_NO              		VARCHAR2(100),
    DATE_CREATED         		DATE,
    DATE_FILED   		 		DATE,
    CUSTOMER_NAME        		VARCHAR2(20),
    CUSTOMER_ADDRESS        	VARCHAR2(100),
    CUSTOMER_PHONENUM    		VARCHAR2(100),
    CUSTOMER_CONTACTPERSON_1    VARCHAR2(100),
    CUSTOMER_CONTACTPERSON_2    VARCHAR2(100),
    BANK_NAME  					VARCHAR2(100),
    BANK_ADDRESS        		VARCHAR2(100),
    BANK_PHONENUM    			VARCHAR2(20),
    BANK_CONTACTPERSON_1 		VARCHAR2(100),
    BANK_CONTACTPERSON_2    	VARCHAR2(100),
  	REMARKS         			VARCHAR2(100));

  	
CREATE SEQUENCE LEGAL_DESCRIPTION_ID_SEQ INCREMENT BY 1 START WITH 1 NOMAXVALUE NOMINVALUE NOCYCLE ORDER;