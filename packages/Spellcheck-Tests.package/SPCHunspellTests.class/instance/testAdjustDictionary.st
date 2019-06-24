testing
testAdjustDictionary

	self deny: (hunspell isWordCorrect: wrongWord).
	hunspell addWordToDictionary: wrongWord.
	self assert: (hunspell isWordCorrect: wrongWord).
	
	SPCSpellChecker instance removeWordFromDictionary: wrongWord.

	self deny: (hunspell isWordCorrect: wrongWord)