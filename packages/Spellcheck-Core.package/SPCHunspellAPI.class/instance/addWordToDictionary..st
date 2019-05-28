spellchecking
addWordToDictionary: aString
	((self class libraryExists and: [ handle isNil not ])  and: [ self class handleNotNil]) ifTrue: [
		self apiAdd: self apiHandle word: aString
	]