testing
testIgnoreAll
	super setUp.
	correctionUI inputText: textWithMistakes.
	correctionUI ignoreAll.
	self assert: correctionUI contextSentence = correctionUI class noWrongWordsText.
	self assert: correctionUI alternativeWords = correctionUI class noAlternativesText.
	self assert: (spellchecker isSpelledCorrectly: 'miscakes').
	
	spellchecker 
		removeWordFromIgnoreList: 'Manny';
		removeWordFromIgnoreList: 'miscakes';
		removeWordFromIgnoreList: 'texxt'
				