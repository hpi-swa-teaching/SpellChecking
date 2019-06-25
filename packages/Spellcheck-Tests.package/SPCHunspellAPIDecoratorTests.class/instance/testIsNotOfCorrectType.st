as yet unclassified
testIsNotOfCorrectType
	decorator alertOnError: false.
	self deny: (decorator isFile: (FileDirectory default fileNamed: SPCHunspellAPIDecoratorTests germanDictionary) ofCorrectType: 'aff')