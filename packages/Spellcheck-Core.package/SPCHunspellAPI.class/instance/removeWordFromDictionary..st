spellchecking
removeWordFromDictionary: aString
	((self class libraryExists and: [self class fileExists: aString])  and: [ self class handleNotNil]) ifTrue: [
		self apiRemove: self apiHandle word: aString
	]