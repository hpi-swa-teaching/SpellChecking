testing
testIgnoreAll

	correctionUI inputText: 'Manny miscakes in thee texxt'.
	correctionUI ignoreAll.
	self assert: correctionUI wrongWordText = correctionUI class noWrongWordsText.
	self assert: correctionUI alternatives = correctionUI class noAlternativesText.
	spellchecker 
		removeWordFromIgnoreList: 'Manny';
		removeWordFromIgnoreList: 'miscakes';
		removeWordFromIgnoreList: 'texxt'
				