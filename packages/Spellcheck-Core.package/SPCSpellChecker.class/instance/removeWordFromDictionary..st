dictionary and ignore list
removeWordFromDictionary: aString

	self addedWords remove: aString ifAbsent: [].
	self hunspell removeWordFromDictionary: aString.
	self class notifyObservers: #addedWords