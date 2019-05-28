spellchecking
addDictionary: aDictionaryPath
	((self class libraryExists and: [ self fileExists: aDictionaryPath ]) and: [ self class handleNotNil]) ifTrue: [
		self apiAdd: self apiHandle dictionary: aDictionaryPath
	]