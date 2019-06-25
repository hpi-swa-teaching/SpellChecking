as yet unclassified
testIsOfCorrectType
	self assert: (decorator isFile: (FileDirectory default fileNamed: SPCHunspellAPIDecoratorTests germanDictionary) ofCorrectType: 'dic')