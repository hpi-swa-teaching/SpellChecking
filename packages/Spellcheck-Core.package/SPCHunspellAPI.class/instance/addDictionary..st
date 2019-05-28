spellchecking
addDictionary: aDictionaryPath
	((self class libraryExists and: [ self class fileExists: aDictionaryPath ]) and: [ self class handleNotNil]) ifTrue: [
		self apiAdd: self apiHandle dictionary: aDictionaryPath
	]