
update property_definition set default_value='com.vsoftcorp.finance.Money:USD 5000.00' where property_name='MaxPaymentAmountIncreasesBy';
update property_definition set default_value='com.vsoftcorp.finance.Money:USD 0.00' where property_name='MaxPaymentAmountDecreasesBy';
update property_definition set default_value='com.vsoftcorp.finance.Money:USD 10000.00' where property_name='MaxPaymentAmountforLife';
update property_definition set default_value='com.vsoftcorp.finance.Money:USD 0.00' where property_name='MinPaymentAmountforLife';
update property_definition set default_value='com.vsoftcorp.time.Duration:DAY:45' where property_name='PaymentChangeLeadPeriod';
update property_definition set default_value='com.vsoftcorp.time.Duration:DAY:15'where property_name='PaymentAdjustmentFirstPeriod';
update property_definition set mandatory=1 where property_name='AmortizationTermRemaining';
update property_definition set default_value='com.vsoftcorp.time.Duration:DAY:15'where property_name='PaymentAdjustmentSubsequentperiod';