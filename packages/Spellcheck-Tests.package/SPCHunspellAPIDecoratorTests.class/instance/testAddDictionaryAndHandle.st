as yet unclassified
testAddDictionaryAndHandle
	| numberofHunspells instances |
	numberofHunspells := decorator instances size.
	decorator addDictionary: '/notThere' andAffix: '/NotThereEither'.
	self assert: (numberofHunspells = (decorator instances size - 1)).
	instances := decorator instances select: [ :instance | (instance dictionaryPath =  '/notThere') and: [ instance affixPath =  '/NotThereEither' ]].
	self deny: instances isEmpty