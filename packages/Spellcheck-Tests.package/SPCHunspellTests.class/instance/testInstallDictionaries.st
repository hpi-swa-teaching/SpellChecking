testing
testInstallDictionaries

	self assert: (SPCHunspellAPI ressourceDirectory directoryExists: 'dictionaries').
	self assert: ((SPCHunspellAPI ressourceDirectory directoryNamed: 'dictionaries') 	directoryExists: 'english' ).
	self assert: (((SPCHunspellAPI ressourceDirectory directoryNamed: 'dictionaries') 	directoryNamed: 'english' ) fileExists: 'en_US.aff').
	self assert: (((SPCHunspellAPI ressourceDirectory directoryNamed: 'dictionaries') 	directoryNamed: 'english' ) fileExists: 'en_US.dic').
	self assert: ((SPCHunspellAPI ressourceDirectory directoryNamed: 'dictionaries') 	directoryExists: 'german' ).
	self assert: (((SPCHunspellAPI ressourceDirectory directoryNamed: 'dictionaries') 	directoryNamed: 'german') fileExists: 'de_DE.dic' ).
	self assert: (((SPCHunspellAPI ressourceDirectory directoryNamed: 'dictionaries') 	directoryNamed: 'german') fileExists: 'de_DE.aff' )
		