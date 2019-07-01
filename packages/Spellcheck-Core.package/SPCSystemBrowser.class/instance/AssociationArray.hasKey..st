spellchecking
AssociationArray: anArrayOfAssociations hasKey: anObject
	^ (anArrayOfAssociations select: [ :association | association key = anObject  ]) isEmpty not
	