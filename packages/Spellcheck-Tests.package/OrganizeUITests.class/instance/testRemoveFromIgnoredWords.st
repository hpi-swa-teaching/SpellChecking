testing
testRemoveFromIgnoredWords

	self deny: (SPCSpellChecker instance isSpelledCorrectly: wrongWord).
	
	SPCSpellChecker instance addWordToDictionary: wrongWord.
	self assert: (SPCSpellChecker instance isSpelledCorrectly: wrongWord).
	
	ui selectedWord: wrongWord.
	ui removeFromIgnoredWords.
	
	self deny: (SPCSpellChecker instance isSpelledCorrectly: wrongWord)
	