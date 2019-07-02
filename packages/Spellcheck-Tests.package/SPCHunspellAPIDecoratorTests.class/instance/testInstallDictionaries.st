as yet unclassified
testInstallDictionaries

	self assert: (SPCHunspellAPIDecorator ressourceDirectory directoryExists: 'dictionaries').
	self assert: ((SPCHunspellAPIDecorator ressourceDirectory directoryNamed: 'dictionaries') 	directoryExists: 'english' ).
	self assert: (((SPCHunspellAPIDecorator ressourceDirectory directoryNamed: 'dictionaries') 	directoryNamed: 'english' ) fileExists: 'en_US.aff').
	self assert: (((SPCHunspellAPIDecorator ressourceDirectory directoryNamed: 'dictionaries') 	directoryNamed: 'english' ) fileExists: 'en_US.dic').
	self assert: ((SPCHunspellAPIDecorator ressourceDirectory directoryNamed: 'dictionaries') 	directoryExists: 'german' ).
	self assert: (((SPCHunspellAPIDecorator ressourceDirectory directoryNamed: 'dictionaries') 	directoryNamed: 'german') fileExists: 'de_DE.dic' ).
	self assert: (((SPCHunspellAPIDecorator ressourceDirectory directoryNamed: 'dictionaries') 	directoryNamed: 'german') fileExists: 'de_DE.aff' )
		