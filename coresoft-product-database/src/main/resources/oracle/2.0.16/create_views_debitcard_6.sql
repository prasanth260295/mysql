--CARD_UPDATE_NUMBER_VW
CREATE OR REPLACE VIEW CARD_UPDATE_NUMBER_VW ( "SUBCRIPTION_ID", "ACCOUNT_NO", "CARD_NO" )
AS
SELECT ISU.SUBCRIPTION_ID,cu.ACCOUNT_NO,cu.CARD_NO
FROM SUBSCRIBER S, DEBITCARD_USER DU ,DEBITCARD_SUBSCRIPTION isu,card_update_number cu 
WHERE isu.primary_account_number=cu.ACCOUNT_NO
and ISU.SUBSCRIBER_ID = S.SUBSCRIBER_ID 
    AND ISU.PRIMARY_USER_ID=DU.USER_ID 
    AND ISU.STATUS='ACTIVE' 
    AND UPPER(DU.emboss_LINE1)=upper(replace(cu.CARD_NAME,'.',''));
    

--