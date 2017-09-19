drop table PARTY_ASSOC_DELUXE_CREDENTIAL;

create table PARTY_ASSOC_DELUXE_CREDENTIAL(
ID  NUMBER(38) NOT NULL,
UNIQUE_ASSOCIATION_ID NUMBER NOT NULL,
Response_Code VARCHAR(20),
Response_Message VARCHAR(20),
Inquiry_System_Identifier VARCHAR(20),
RemarketerSystem_Identifier VARCHAR(20),
Reference_Number VARCHAR(20),
Customer_ID VARCHAR(20),
Attempt_Number VARCHAR(20),
Customer_Use1 VARCHAR(20),
Initial_Message VARCHAR(50),
Decision_Message VARCHAR(50),
Overall_Severity VARCHAR(20),
Cumulative_Loss VARCHAR(20),
FCRA_Flag VARCHAR(20),
Warning_Number VARCHAR(20),
Warning_Text VARCHAR(20),
Severity VARCHAR(20),
Match_Type VARCHAR(20),
Match_Field VARCHAR(20),
Match_Data VARCHAR(20),
Consumer_Type VARCHAR(20),
SSN VARCHAR(20),
Last_Name VARCHAR(20),
Middle_Name VARCHAR(20),
First_Name VARCHAR(20),
Birth_Date VARCHAR(20),
Identification_Type VARCHAR(20),
Identification_Number VARCHAR(20),
Identification_State VARCHAR(20),
Identification_Country VARCHAR(20),
Identification_ExpirationDate VARCHAR(20),
Address_Type VARCHAR(20),
Address1 VARCHAR(20),
Address2 VARCHAR(20),
City VARCHAR(20),
State VARCHAR(20),
Postal_Code VARCHAR(20),
Country_Code VARCHAR(20),
Phone_Type VARCHAR(20),
Phone_Number VARCHAR(20),
Business_Name VARCHAR(20),
TaxID_Number VARCHAR(20),
Consumer_ABANumber VARCHAR(20),
Account_Number VARCHAR(20),
Closure_Date VARCHAR(20),
Age_In_Months VARCHAR(20),
Loss_Type VARCHAR(20),
CACReturn_ItemCount VARCHAR(20),
Contribution_Source VARCHAR(20),
Principal_Loss VARCHAR(20),
Fee_Reversal VARCHAR(20),
CombinedLoss_And_FeeReversal VARCHAR(20),
Paid_Status VARCHAR(20),
Paid_Date VARCHAR(20),
Settle_Date VARCHAR(20),
Dispute_Code VARCHAR(20),
Dispute_Reason VARCHAR(20),
Dispute_Date VARCHAR(20),
Contributor_Name VARCHAR(20),
CONSTRAINT fk_uid FOREIGN KEY (UNIQUE_ASSOCIATION_ID) REFERENCES pARTY_INSTITUTION_ASSOCIATION(UNIQUE_ASSOCIATION_ID));

ALTER TABLE PARTY_ASSOC_DELUXE_CREDENTIAL ADD OFAC_DATA VARCHAR2(50);