testing
testRemoveFromIgnoredWords

	self deny: (ui spellchecker isSpelledCorrectly: wrongWord).
	
	ui spellchecker addWordToDictionary: wrongWord.
	self assert: (ui spellchecker isSpelledCorrectly: wrongWord).
	
	ui selectedWord: wrongWord.
	ui removeFromIgnoredWords.
	
	self deny: (ui spellchecker isSpelledCorrectly: wrongWord)
	