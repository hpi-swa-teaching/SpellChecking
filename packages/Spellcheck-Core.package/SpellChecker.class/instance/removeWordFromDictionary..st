as yet unclassified
removeWordFromDictionary: aString

	self addedWords remove: aString ifAbsent: [].
	self hunspell removeWordFromDictionary: aString