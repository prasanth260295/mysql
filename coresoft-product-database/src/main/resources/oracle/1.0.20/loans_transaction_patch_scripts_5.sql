----- LOAN_ACCOUNT SCRIPTS
alter table LOAN_ACCOUNT add CURRENT_AGGREGATE_BAL  NUMBER(20,6);
alter table LOAN_ACCOUNT add CURRENT_AVERAGE_BAL  NUMBER(20,6);
alter table LOAN_ACCOUNT add CURRENT_LOW_BORROWING  NUMBER(20,6);
alter table LOAN_ACCOUNT add CURRENT_HIGH_BORROWING  NUMBER(20,6);

alter table LOAN_ACCOUNT add PREVIOUS_AGGREGATE_BAL  NUMBER(20,6);
alter table LOAN_ACCOUNT add PREVIOUS_AVERAGE_BAL  NUMBER(20,6);
alter table LOAN_ACCOUNT add PREVIOUS_LOW_BORROWING  NUMBER(20,6);
alter table LOAN_ACCOUNT add PREVIOUS_HIGH_BORROWING  NUMBER(20,6);


----- POSTING RULE SCRIPTS
alter table LOAN_ENTRY_POSTING_RULE add AFFECTS_AGG_AVG_BALS NUMBER(1) DEFAULT 0 ;


-- SETTING FOR END DAY DUMMY EVENT
UPDATE LOAN_ENTRY_POSTING_RULE SET AFFECTS_AGG_AVG_BALS=1 WHERE POSTING_RULE_ID = 9999;


----- LOAN_ACCOUNT SCRIPTS
alter table LOAN_ACCOUNT drop COLUMN INITIAL_FUND_POSTED_DATE;
alter table LOAN_ACCOUNT add INITIAL_FUND_EFFECTIVE_DATE  date;

UPDATE ENTRY_TYPE SET DESCRIPTION='Collected Late Charge' where unique_id in (1802 , 1902);
UPDATE ENTRY_TYPE SET DESCRIPTION='Un Collected Late Charge' where unique_id in (1807 , 1907);
UPDATE ENTRY_TYPE SET DESCRIPTION='Bank Rebate' where unique_id in ( 1810,1910 );


INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1811, '1811', null, '2','0', 'Colleteral Rebate');

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1911, '1911', null, '2','1', 'Colleteral Rebate');
    
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1812, '1812', null, '2','0', 'Special Reserve1 Rebate');    

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1912, '1912', null, '2','1', 'Special Reserve1 Rebate');    

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1813, '1813', null, '2','0', 'Special Reserve2 Rebate');    

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1913, '1913', null, '2','1', 'Special Reserve2 Rebate');    

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1814, '1814', null, '2','0', 'Dealer Rebate');    

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1914, '1914', null, '2','1', 'Dealer Rebate');

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1815, '1815', null, '2','0', 'Dealer Hold Back Rebate');    

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1915, '1915', null, '2','1', 'Dealer Hold Back Rebate');    

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1816, '1816', null, '2','0', 'Original Loan Amount');    

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1916, '1916', null, '2','1', 'Original Loan Amount');

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1817, '1817', null, '2','0', 'Amortized Balance');    

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1917, '1917', null, '2','1', 'Amortized Balance');

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1818, '1818', null, '2','0', 'Credit Life Rebate');    

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1918, '1918', null, '2','1', 'Credit Life Rebate');
    
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1819, '1819', null, '2','0', 'Waived Late Charge');    

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1919, '1919', null, '2','1', 'Waived Late Charge');
    
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1820, '1820', null, '2','0', 'Last Transaction Amount');    

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1920, '1920', null, '2','1', 'Last Transaction Amount');    
    
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1822, '1822', null, '2','0', 'Accrued Interest');    

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1922, '1922', null, '2','1', 'Accrued Interest');

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1823, '1823', null, '2','0', 'Accrued Interest Net');    

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1923, '1923', null, '2','1', 'Accrued Interest Net');
    
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1824, '1824', null, '2','0', 'Accumulated Interest');    

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1924, '1924', null, '2','1', 'Accumulated Interest');
    
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1825, '1825', null, '2','0', 'Past Due Amount');    

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1925, '1925', null, '2','1', 'Past Due Amount');
    
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1826, '1826', null, '2','0', 'Dealer Daily Accrual Amount');    

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1926, '1926', null, '2','1', 'Dealer Daily Accrual Amount');

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1827, '1827', null, '2','0', 'Dealer Accumulative Interest');    

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1927, '1927', null, '2','1', 'Dealer Accumulative Interest');    
    
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1828, '1828', null, '2','0', 'Dealer Accrued Interest');    

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1928, '1928', null, '2','1', 'Dealer Accrued Interest');
    
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1829, '1829', null, '2','0', 'Schedule Payment Amount');    

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1929, '1929', null, '2','1', 'Schedule Payment Amount');    

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1830, '1830', null, '2','0', 'Last Statement Balance');    

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1930, '1930', null, '2','1', 'Last Statement Balance');    
    
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1831, '1831', null, '2','0', 'New Schedule Payment Amount');    

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1931, '1931', null, '2','1', 'New Schedule Payment Amount');  
    
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1832, '1832', null, '2','0', 'Past Principal Due');    

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1932, '1932', null, '2','1', 'Past Principal Due');  

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1833, '1833', null, '2','0', 'Past Interest Due');    

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1933, '1933', null, '2','1', 'Past Interest Due');  
    
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1834, '1834', null, '2','0', 'Past Escrow Due');    

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1934, '1934', null, '2','1', 'Past Escrow Due');
    
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1835, '1835', null, '2','0', 'Past AH Life Due');    

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1935, '1935', null, '2','1', 'Past AH Life Due');

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1836, '1836', null, '2','0', 'Origination Fee Paid');    

INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(1936, '1936', null, '2','1', 'Origination Fee Paid');

INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (1);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (2);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (3);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (4);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (5);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (6);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (7);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (8);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (9);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (10);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (11);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (12);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (13);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (14);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (15);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (16);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (17);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (18);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (19);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (20);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (21);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (22);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (23);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (24);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (25);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (26);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (27);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (28);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (29);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (30);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (31);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (32);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (33);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (34);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (35);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (36);
    
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1801,1,1901,1);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1802,2,1902,2);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1803,3,1903,3);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1804,4,1904,4);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1805,5,1905,5);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1806,6,1906,6);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1807,7,1907,7);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1808,8,1908,8);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1809,9,1909,9);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1810,10,1910,10);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1811,11,1911,11);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1812,12,1912,12);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1813,13,1913,13);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1814,14,1914,14);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1815,15,1915,15);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1816,16,1916,16);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1817,17,1917,17);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1818,18,1918,18);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1819,19,1919,19);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1820,20,1920,20);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1822,22,1922,22);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1823,23,1923,23);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1824,24,1924,24);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1825,25,1925,25);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1826,26,1926,26);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1827,27,1927,27);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1828,28,1928,28);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1829,29,1929,29);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1830,30,1930,30);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1831,31,1931,31);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1832,32,1932,32);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1833,33,1933,33);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1834,34,1934,34);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1835,35,1935,35);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1836,36,1936,36);



-- REVERSAL ENTRY TYPES
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1901,1,1801,1);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1902,2,1802,2);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1903,3,1803,3);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1904,4,1804,4);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1905,5,1805,5);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1906,6,1806,6);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1907,7,1807,7);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1908,8,1808,8);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1909,9,1809,9);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1910,10,1810,10);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1911,11,1811,11);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1912,12,1812,12);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1913,13,1813,13);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1914,14,1814,14);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1915,15,1815,15);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1916,16,1816,16);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1917,17,1817,17);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1918,18,1818,18);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1919,19,1819,19);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1920,20,1820,20);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1922,22,1822,22);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1923,23,1823,23);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1924,24,1824,24);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1925,25,1825,25);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1926,26,1826,26);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1927,27,1827,27);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1928,28,1828,28);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1929,29,1829,29);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1930,30,1830,30);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1931,31,1831,31);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1932,32,1832,32);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1933,33,1833,33);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1934,34,1834,34);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1935,35,1835,35);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (1936,36,1836,36);


--Dummary Entry Types 
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(99999, '99999', null, '2','1', 'End Day');
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(88888, '88888', null, '2','0', 'End Day');
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(8881, '8881', null, '2','0', 'Initial Fund');
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(99991, '9991', null, '2','1', 'Initial Fund');
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(8882, '8882', null, '2','0', 'Regular Payment');
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(99992, '9992', null, '2','1', 'Regular Payment');    
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(8883, '8883', null, '2','0', 'Loan Payoff');
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(99993, '9993', null, '2','1', 'Loan Payoff');    
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(8884, '8884', null, '2','0', 'Curtailment Non True Payment');
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(99994, '9994', null, '2','1', 'Curtailment Non True Payment');
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(8813, '8813', null, '2','0', 'Interest Payment');
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(99913, '9913', null, '2','1', 'Interest Payment');
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(8814, '8814', null, '2','0', 'Escrow Payment');
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(99914, '9914',null, '2','1','Escrow Payment');
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(8816, '8816', null, '2','0', 'Late Charge Payment');
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(99916, '9916', null, '2','1','Late Charge Payment');    
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(8817, '8817', null, '2','0', 'Life AH Payment');
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(99917, '9917',null, '2','1','Life AH Payment');
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(8820, '8820', null, '2','0', 'Curtailment True Payment');
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(99920, '9920', null, '2','1', 'Curtailment True Payment');    
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(8831, '8831', null, '2','0', 'Credit Memo Principal Payment');
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(8832, '8832', null, '2','0', 'Credit Memo Late Charge Payment');
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(8833, '8833', null, '2','0', 'Credit Memo Escrow Payment');
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(8834, '8834', null, '2','0', 'Credit Memo Other Fee Payment');
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(8821, '8821', null, '2','1', 'Debit Memo Principal Payment');        
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(8822, '8822', null, '2','1', 'Debit Memo Late Charge Payment');    
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(8823, '8823', null, '2','1', 'Debit Memo Escrow Payment');
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(8824, '8824', null, '2','1', 'Debit Memo Other Fee Payment');
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(8836, '8836', null, '2','1', 'Originaton Fee Payment');    
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(8825, '8825', null, '2','1', 'Interest Paid  -Debit Adjustment');  
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(8835, '8835', null, '2','0', 'Interest Paid  -Credit Adjustment');
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(8840, '8840', null, '2','1', 'Escrow Disbursement');    
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(8841, '8841', null, '2','1', 'Life AH Disbursement');
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(8112, '8112', null, '2','1', 'Future Payment');
INSERT INTO ENTRY_TYPE(UNIQUE_ID, ID, INSTITUTION_ID, ACCOUNT_CATEGORY, DEBIT_OR_CREDIT, DESCRIPTION)
    VALUES(8842, '8842', null, '2','1', 'Loan Extension');    
    
--Dummary Entry Posting Rules

INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (9999);

INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (8881);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (8882);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (8883);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (8884);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (8813);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (8814);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (8816);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (8817);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (8820);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (8821);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (8822);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (8823);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (8824);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (8831);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (8832);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (8833);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (8834);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (8836);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (8837);
INSERT INTO LOAN_ENTRY_POSTING_RULE (POSTING_RULE_ID)VALUES (8838);

    
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (88888,9999,99999,9999);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (99999,9999,88888,9999);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (8881,8881,99991,8881);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (99991,8881,8881,8881);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (8882,8882,99992,8882);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (99992,8882,8882,8882);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (8883,8883,99993,8883);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (99993,8883,8883,8883);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (8884,8884,99994,8884);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (99994,8884,8884,8884);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (8813,8813,99913,8813);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (99913,8813,8813,8813);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (8814,8814,99914,8814);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (99914,8814,8814,8814);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (8816,8816,99916,8816);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (99916,8816,8816,8816);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (8817,8817,99917,8817);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (99917,8817,8817,8817);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (8820,8820,99920,8820);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (99920,8820,8820,8820);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (8831,8831,8831,8831);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (8832,8832,8832,8832);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (8833,8833,8833,8833);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (8834,8834,8834,8834);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (8821,8821,8821,8821);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (8822,8822,8822,8822);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (8823,8823,8823,8823);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (8824,8824,8824,8824);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (8836,8836,8836,8836);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (8837,8837,8837,8837);
INSERT INTO LOAN_ENTRY_TYPE (ENTRY_TYPE_ID,ENTRY_NAME,REVERSAL_ENTRY_TYPE_ID,POSTING_RULE_ID) VALUES (8838,8838,8838,8838);	



