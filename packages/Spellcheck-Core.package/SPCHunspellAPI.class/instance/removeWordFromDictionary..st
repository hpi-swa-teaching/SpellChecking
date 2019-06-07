spellchecking
removeWordFromDictionary: aString
	((self class libraryExists)  and: [ self handleNotNil]) ifTrue: [
		self apiRemove: self apiHandle word: aString
	]