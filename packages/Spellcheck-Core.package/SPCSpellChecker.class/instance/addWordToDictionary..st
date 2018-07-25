as yet unclassified
addWordToDictionary: aString

	self addedWords add: aString.
	self hunspell addWordToDictionary: aString