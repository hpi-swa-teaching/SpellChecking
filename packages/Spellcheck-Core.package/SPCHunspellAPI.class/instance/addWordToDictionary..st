spellchecking
addWordToDictionary: aString
	(self class libraryExists  and: [ self handleNotNil]) ifTrue: [
		self apiAdd: self apiHandle word: aString
	]