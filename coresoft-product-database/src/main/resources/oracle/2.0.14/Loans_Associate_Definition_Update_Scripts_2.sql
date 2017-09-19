--DistributionHeads are mandatory for PostingSequence 

 update  associate_definition set mandatory=1 where associate_name='DistributionHeads'  and
  Entity_type_definition_id=(select Entity_type_definition_id from Entity_type_definition where type_name='PostingSequence');