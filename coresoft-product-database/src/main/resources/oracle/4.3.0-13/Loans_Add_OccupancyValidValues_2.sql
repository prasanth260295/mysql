--script for updating the valid values for Occupancy status.
UPDATE property_definition
SET VALID_VALUES ='java.lang.Integer:{default={1=Non-Owner Occupied,3=Multi Family,0=Owner Occupied,4=2nd Home,5=Rental}}'
WHERE property_definition_id IN
  (SELECT property_definition_id
  FROM property_definition
  WHERE property_name LIKE 'OccupancyStatus'
  );