spellchecking
addWordToDictionary: aString
	(self class libraryExists  and: [ self class handleNotNil]) ifTrue: [
		self apiAdd: self apiHandle word: aString
	]