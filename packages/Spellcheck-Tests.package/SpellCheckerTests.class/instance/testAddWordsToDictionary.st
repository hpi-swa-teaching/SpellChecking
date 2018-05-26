as yet unclassified
testAddWordsToDictionary
	
	spellChecker clearIgnoredWords.
	self assert: spellChecker AddedWords size equals: 0.
	self assert: (spellChecker isSpelledCorrectly: 'squeack') equals: false.
	spellChecker addWordToDictionary: 'squeack'.
	self assert: (spellChecker isSpelledCorrectly: 'squeack') equals: true.
	spellChecker removeWordFromDictionary: 'squeack'.
	self assert: (spellChecker isSpelledCorrectly: 'squeack') equals: false.
	spellChecker addWordToDictionary: 'squeack'.
	spellChecker clearIgnoredWords.
	self assert: (spellChecker isSpelledCorrectly: 'squeack') equals: false.