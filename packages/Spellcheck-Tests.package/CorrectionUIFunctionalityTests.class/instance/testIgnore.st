testing
testIgnore
	
	correctionUI inputText: 'miscake'.
	correctionUI ignore.
	self assert: correctionUI wrongWordText = correctionUI class noWrongWordsText.
	self assert: correctionUI alternatives = correctionUI class noAlternativesText.
	
	spellchecker removeWordFromIgnoreList: 'miscake'