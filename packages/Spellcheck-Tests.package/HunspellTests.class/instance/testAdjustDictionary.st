testing
testAdjustDictionary

	hunspell addWordToDictionary: 'Klabautermann'.
	self assert: (hunspell isWordCorrect: 'Klabautermann').
	
	hunspell removeWordFromDictionary: 'Klabautermann'.
	self deny: (hunspell isWordCorrect: 'Klabautermann')