dictionary and ignore list
clearIgnoredWords
	
	self addedWords do: [:each | self hunspell removeWordFromDictionary: each].
	self addedWords: Set new