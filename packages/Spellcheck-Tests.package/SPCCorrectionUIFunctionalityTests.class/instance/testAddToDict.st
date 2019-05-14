testing
testAddToDict

	self deny: (spellchecker isSpelledCorrectly: wrongWord).
	
	correctionUI inputText: wrongWord.
	correctionUI addToDictionary.
	self assert: (spellchecker isSpelledCorrectly: wrongWord).
	
	spellchecker removeWordFromDictionary: wrongWord