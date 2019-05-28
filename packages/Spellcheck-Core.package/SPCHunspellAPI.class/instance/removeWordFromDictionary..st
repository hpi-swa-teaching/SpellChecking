spellchecking
removeWordFromDictionary: aString
	((self class libraryExists)  and: [ self class handleNotNil]) ifTrue: [
		self apiRemove: self apiHandle word: aString
	]