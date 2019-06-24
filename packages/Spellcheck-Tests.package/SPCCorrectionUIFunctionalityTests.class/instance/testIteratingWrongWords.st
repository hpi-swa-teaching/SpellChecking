testing
testIteratingWrongWords
	super setUp.
	correctionUI inputText: textWithMistakes.
	self assert: correctionUI currentWord = 'Manny'.
	
	correctionUI displayNextWord.
	self assert: correctionUI currentWord = 'miscakes'.
	
	correctionUI displayPreviousWord; displayPreviousWord.
	self assert: correctionUI currentWord = 'texxt'
	