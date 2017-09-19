CREATE TABLE ID_TYPE_MASTER(
    UNIQUE_ID NUMBER(30,0) NOT NULL ENABLE,
    ID_Type VARCHAR2(100),
      Primary_ID NUMBER,
      Secondary_ID NUMBER,
    Prim_ID_Number NUMBER,
    Prim_ID_Affiliation NUMBER,
    Prim_ID_State NUMBER,
    Prim_ID_Issue_Date NUMBER,
    Prim_ID_Expiration_Date NUMBER,
    Sec_ID_Description NUMBER,
   CONSTRAINT "ID_TYPE_MASTER_PK" PRIMARY KEY ("UNIQUE_ID") ENABLE );
   
--   insert into ID_TYPE_MASTER values(1,'U.S. Driver''s License',1,1,1,0,1,1,1,1);
--   insert into ID_TYPE_MASTER values(2,'State-Issued ID Card',1,1,1,0,1,1,1,1);   
--   insert into ID_TYPE_MASTER values(3,'Passport',1,1,1,0,1,1,1,1);   
--   insert into ID_TYPE_MASTER values(4,'Permanent Resident Card',1,1,1,0,0,1,1,1);   
--   insert into ID_TYPE_MASTER values(5,'State-Issued Concealed Handgun License',1,1,1,0,1,1,1,1);   
--   insert into ID_TYPE_MASTER values(6,'Matricula Consular Card',1,1,1,0,0,1,1,1);   
--   insert into ID_TYPE_MASTER values(7,'Minor',1,1,1,0,0,0,0,1);   
--   insert into ID_TYPE_MASTER values(8,'Elderly',1,1,1,0,0,0,0,1);
--   insert into ID_TYPE_MASTER values(9,'Alien Registration Receipt Card',1,0,1,0,0,0,1,0);
--   insert into ID_TYPE_MASTER values(10,'Government Issued Identification',1,0,1,0,1,1,1,0);
--   insert into ID_TYPE_MASTER values(11,'Military Identification Card',1,0,1,1,0,1,1,0);
--   insert into ID_TYPE_MASTER values(12,'Other Substitution',0,1,0,0,0,0,0,1);
--   insert into ID_TYPE_MASTER values(13,'Social Security Card',0,1,0,0,0,0,0,1);
--   insert into ID_TYPE_MASTER values(14,'Employer Identification card',0,1,0,0,0,0,0,1);
--   insert into ID_TYPE_MASTER values(15,'Insurance Card ',0,1,0,0,0,0,0,1);
--   insert into ID_TYPE_MASTER values(16,'U.S.Voter Registration Card',0,1,0,0,0,0,0,1);
--   insert into ID_TYPE_MASTER values(17,'Utility Bill',0,1,0,0,0,0,0,1);
--   insert into ID_TYPE_MASTER values(18,'Birth Certificate',0,1,0,0,0,0,0,1);
--   insert into ID_TYPE_MASTER values(19,'Vehicle Registration',0,1,0,0,0,0,0,1);
--   insert into ID_TYPE_MASTER values(20,'Student ID Card',0,1,0,0,0,0,0,1);
--   insert into ID_TYPE_MASTER values(21,'Professional License or Card',0,1,0,0,0,0,0,1);
--   insert into ID_TYPE_MASTER values(22,'Department of Criminal Justice ID Card',0,1,0,0,0,0,0,1);
--   insert into ID_TYPE_MASTER values(23,'U.S Citizen Identification Card',0,1,0,0,0,0,0,1);