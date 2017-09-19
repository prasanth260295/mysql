CREATE TABLE extract_master
(
Extract_UId NUMBER(10) NOT NULL ,
Extract_Name VARCHAR2(30) NOT NULL ,
Description VARCHAR2(30),
Vendor_Name VARCHAR2(30),
File_Name VARCHAR2(50),
File_Type VARCHAR2(30),
Frequency VARCHAR2(30),
Last_Execution_Date DATE,
Next_Execution_Date DATE,
Remarks VARCHAR2(30),
CONSTRAINT extract_uid_pk PRIMARY KEY (Extract_UId)
);