as yet unclassified
testAddWordsToDictionary
	
	spellChecker clearIgnoredWords.
	self assert: spellChecker AddedWords size equals: 0.
	self deny: (spellChecker isSpelledCorrectly: 'squeack').
	spellChecker addWordToDictionary: 'squeack'.
	self assert: (spellChecker isSpelledCorrectly: 'squeack').
	spellChecker removeWordFromDictionary: 'squeack'.
	self deny: (spellChecker isSpelledCorrectly: 'squeack').
	spellChecker addWordToDictionary: 'squeack'.
	spellChecker clearIgnoredWords.
	self deny: (spellChecker isSpelledCorrectly: 'squeack')