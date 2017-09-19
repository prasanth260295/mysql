UPDATE property_definition set property_name ='MinimumInvestmentPercentage',property_description='Minimum Investment Percentage' WHERE property_name like 'MininumInvestmentPercentage';

update associate_definition set mandatory=0 where associate_name like 'LoanModification';