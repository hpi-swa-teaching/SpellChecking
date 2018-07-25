testing
testAdjustDictionary

	hunspell addWordToDictionary: wrongWord.
	self assert: (hunspell isWordCorrect: wrongWord).
	
	hunspell removeWordFromDictionary: wrongWord.
	self deny: (hunspell isWordCorrect: wrongWord)