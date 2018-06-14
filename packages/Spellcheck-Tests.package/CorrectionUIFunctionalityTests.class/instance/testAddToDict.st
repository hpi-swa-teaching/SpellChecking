testing
testAddToDict

	spellchecker clearIgnoredWords.
	self deny: (spellchecker isSpelledCorrectly: 'tset').
	correctionUI wrongWordText: 'tset'.
	correctionUI addToDict.
	self assert: (spellchecker isSpelledCorrectly: 'tset').