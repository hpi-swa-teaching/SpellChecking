dictionary and ignore list
clearIgnoredWords
	
	self addedWords do: [:each | self hunspell removeWordFromDictionary: each].
	self class notifyObservers: #addedWords.
	self addedWords: Set new.
	self class notifyObservers: #addedWords