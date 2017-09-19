 CREATE OR REPLACE FORCE VIEW "LOAN_INTEREST_INFO_VW" ("ENTITY_TYPE_INSTANCE_ID", "INTEREST_DESC", "P_MINIMUMINTERESTRATE", "P_INTERESTRATE", "P_ANNUALPERCENTAGERATE", "P_MAXIMUMINTERESTRATE", "P_TYPE", "A_INTERESTCALCULATION", "P_ORIGINALINDEXDATE", "P_PAYMENTCHANGEDATE", "P_LASTINDEXDATE", "P_CURRENTINDEXVALUE", "P_CURRENTINDEXDATE", "P_LASTINDEXVALUE", "P_RATECHANGEDATE", "P_INDEXVALUEATLOANORIGINATI", "A_PAYMENTADJUSTMENT", "A_RATEINDEXPARAMETER", "A_RATEADJUSTMENT", "A_NEWINTERESTRATE") AS 
  (SELECT entity_type_instance_id, type_description interest_desc, 
           p_minimuminterestrate, p_interestrate, p_annualpercentagerate, 
           p_maximuminterestrate, p_type, a_interestcalculation, 
           NULL p_originalindexdate, NULL p_paymentchangedate, 
           NULL p_lastindexdate, NULL p_currentindexvalue, 
           NULL p_currentindexdate, NULL p_lastindexvalue, 
           NULL p_ratechangedate, NULL p_indexvalueatloanoriginati, 
           NULL a_paymentadjustment, NULL a_rateindexparameter, 
           NULL a_rateadjustment, NULL a_newinterestrate 
      FROM fixedloaninterest_vw 
    UNION ALL 
    SELECT entity_type_instance_id, type_description interest_desc, 
           p_minimuminterestrate, p_interestrate, p_annualpercentagerate, 
           p_maximuminterestrate, p_type, a_interestcalculation, 
           p_originalindexdate, p_paymentchangedate, p_lastindexdate, 
           p_currentindexvalue, p_currentindexdate, p_lastindexvalue, 
           p_ratechangedate, p_indexvalueatloanoriginati, a_paymentadjustment, 
           a_rateindexparameter, a_rateadjustment, a_newinterestrate 
      FROM variableloaninterest_vw);