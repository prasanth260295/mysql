--Update default value for the properties AHPaymentAmount, AHPayment for the Bug # 54622

update property_definition set DEFAULT_VALUE='com.vsoftcorp.finance.Money:USD 0.00' where property_name in ('AHPaymentAmount','AHPayment');
