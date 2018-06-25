testing
testRemoveFromIgnoredWords

	self deny: (SpellChecker instance isSpelledCorrectly: 'texxt').
	
	SpellChecker instance addWordToDictionary: 'texxt'.
	self assert: (SpellChecker instance isSpelledCorrectly: 'texxt').
	
	ui selectedWord: 'texxt'.
	ui removeFromIgnoredWords.
	
	self deny: (SpellChecker instance isSpelledCorrectly: 'texxt')
	