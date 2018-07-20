testing
testIgnoreAll

	correctionUI inputText: textWithMistakes.
	correctionUI ignoreAll.
	self assert: correctionUI contextSentence = correctionUI class noWrongWordsText.
	self assert: correctionUI alternatives = correctionUI class noAlternativesText.
	self assert: (spellchecker isSpelledCorrectly: 'miscakes').
	
	spellchecker 
		removeWordFromIgnoreList: 'Manny';
		removeWordFromIgnoreList: 'miscakes';
		removeWordFromIgnoreList: 'texxt'
				