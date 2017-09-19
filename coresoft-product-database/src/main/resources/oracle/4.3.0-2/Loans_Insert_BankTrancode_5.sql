--Script for BankTranCode inserting for Loan PayOff Transaction to three loan types.
INSERT INTO BSV_LOAN_EVENT_TYPE(UNIQUE_ID, BSV_EVENT_CODE, STMT_DESC, ACCOUNT_TYPE_ID, EVENT_TYPE_ID, IS_DEFAULT_TRANCODE)
  VALUES(548207, '548', NULL, '207', 15, 0);
INSERT INTO BSV_LOAN_EVENT_TYPE(UNIQUE_ID, BSV_EVENT_CODE, STMT_DESC, ACCOUNT_TYPE_ID, EVENT_TYPE_ID, IS_DEFAULT_TRANCODE)
  VALUES(548, '548', NULL, '208', 15, 0);
INSERT INTO BSV_LOAN_EVENT_TYPE(UNIQUE_ID, BSV_EVENT_CODE, STMT_DESC, ACCOUNT_TYPE_ID, EVENT_TYPE_ID, IS_DEFAULT_TRANCODE)
  VALUES(548110, '548', NULL, '110', 15, 0);


INSERT INTO IPS_LOAN_EVENT_TYPE(UNIQUE_ID, TRAN_CODE, ACCOUNT_TYPE_ID, BSV_EVENT_TYPE_ID)
  VALUES(158, '548', '207', 548207);
INSERT INTO IPS_LOAN_EVENT_TYPE(UNIQUE_ID, TRAN_CODE, ACCOUNT_TYPE_ID, BSV_EVENT_TYPE_ID)
  VALUES(159, '548', '208', 548);
INSERT INTO IPS_LOAN_EVENT_TYPE(UNIQUE_ID, TRAN_CODE, ACCOUNT_TYPE_ID, BSV_EVENT_TYPE_ID)
  VALUES(160, '548', '110', 548110);
  
  INSERT INTO BSV_LOAN_EVENT_TYPE(UNIQUE_ID, BSV_EVENT_CODE, STMT_DESC, ACCOUNT_TYPE_ID, EVENT_TYPE_ID, IS_DEFAULT_TRANCODE)
  VALUES(544, '544', 'LOAN PAYOFF', '207', 15, 1);
INSERT INTO BSV_LOAN_EVENT_TYPE(UNIQUE_ID, BSV_EVENT_CODE, STMT_DESC, ACCOUNT_TYPE_ID, EVENT_TYPE_ID, IS_DEFAULT_TRANCODE)
  VALUES(544208, '544', NULL, '208', 15, 1);
INSERT INTO BSV_LOAN_EVENT_TYPE(UNIQUE_ID, BSV_EVENT_CODE, STMT_DESC, ACCOUNT_TYPE_ID, EVENT_TYPE_ID, IS_DEFAULT_TRANCODE)
  VALUES(544110, '544', NULL, '110', 15, 1);


INSERT INTO IPS_LOAN_EVENT_TYPE(UNIQUE_ID, TRAN_CODE, ACCOUNT_TYPE_ID, BSV_EVENT_TYPE_ID)
  VALUES(34, '544', '207', 544);
INSERT INTO IPS_LOAN_EVENT_TYPE(UNIQUE_ID, TRAN_CODE, ACCOUNT_TYPE_ID, BSV_EVENT_TYPE_ID)
  VALUES(121, '544', '208', 544208);
INSERT INTO IPS_LOAN_EVENT_TYPE(UNIQUE_ID, TRAN_CODE, ACCOUNT_TYPE_ID, BSV_EVENT_TYPE_ID)
  VALUES(122, '544', '110', 544110);