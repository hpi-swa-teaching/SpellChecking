as yet unclassified
addWordToDictionary: aString

	self addedWords add: aString.
	hunspell addWordToDictionary: aString