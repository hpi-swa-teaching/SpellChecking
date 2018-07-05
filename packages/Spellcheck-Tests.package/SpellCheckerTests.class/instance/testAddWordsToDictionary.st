testing
testAddWordsToDictionary
	
	spellChecker clearIgnoredWords.
	self assert: spellChecker addedWords size equals: 0.
	self deny: (spellChecker isSpelledCorrectly: 'squeack').
	
	spellChecker addWordToDictionary: 'squeack'.
	self assert: (spellChecker isSpelledCorrectly: 'squeack').
	spellChecker removeWordFromDictionary: 'squeack'.
	self deny: (spellChecker isSpelledCorrectly: 'squeack').