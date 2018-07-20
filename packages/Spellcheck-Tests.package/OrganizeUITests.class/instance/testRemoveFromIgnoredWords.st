testing
testRemoveFromIgnoredWords

	self deny: (SpellChecker instance isSpelledCorrectly: wrongWord).
	
	SpellChecker instance addWordToDictionary: wrongWord.
	self assert: (SpellChecker instance isSpelledCorrectly: wrongWord).
	
	ui selectedWord: wrongWord.
	ui removeFromIgnoredWords.
	
	self deny: (SpellChecker instance isSpelledCorrectly: wrongWord)
	