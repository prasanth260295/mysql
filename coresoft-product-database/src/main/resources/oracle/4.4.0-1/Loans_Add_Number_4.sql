 
--adding lender number to investor.
  ALTER TABLE INVESTOR ADD LENDER_NUMBER VARCHAR2(30);

--adding member number column 
  ALTER TABLE party_institution_association ADD MEMBER_NUMBER VARCHAR2(30);
  
  
--adding investor loan number at participation account level
ALTER TABLE LOAN_PARTICIPATION ADD INVESTOR_LOAN_NUMBER VARCHAR2(30);
