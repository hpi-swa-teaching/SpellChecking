testing
testAddToDict

	self deny: (spellchecker isSpelledCorrectly: 'tset').
	
	correctionUI inputText: 'tset'.
	correctionUI addToDict.
	self assert: (spellchecker isSpelledCorrectly: 'tset').
	
	spellchecker removeWordFromDictionary: 'tset'