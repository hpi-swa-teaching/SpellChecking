dictionary and ignore list
addWordToDictionary: aString

	self addedWords add: aString.
	self hunspell addWordToDictionary: aString