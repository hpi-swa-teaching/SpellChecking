testing
testAdjustDictionary

	hunspell addWordToDictionary: 'Klabautermann'.
	self assert: (hunspell isWordCorrect: 'Klabautermann') > 0.
	
	hunspell removeWordFromDictionary: 'Klabautermann'.
	self assert: (hunspell isWordCorrect: 'Klabautermann') = 0