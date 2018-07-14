testing
testIgnoreAll

	correctionUI inputText: 'Manny miscakes in the texxt'.
	correctionUI ignoreAll.
	self assert: correctionUI contextSentence = correctionUI class noWrongWordsText.
	self assert: correctionUI alternatives = correctionUI class noAlternativesText.
	self assert: (SpellChecker instance isSpelledCorrectly: 'miscakes').
	
	spellchecker 
		removeWordFromIgnoreList: 'Manny';
		removeWordFromIgnoreList: 'miscakes';
		removeWordFromIgnoreList: 'texxt'
				