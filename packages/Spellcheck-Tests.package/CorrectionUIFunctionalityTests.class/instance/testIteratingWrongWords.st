testing
testIteratingWrongWords

	correctionUI inputText: 'a text wthi a miscake in itt'.
	self assert: correctionUI currentWord = 'wthi'.
	
	correctionUI displayNextWord.
	self assert: correctionUI currentWord = 'miscake'.
	
	correctionUI displayPreviousWord; displayPreviousWord.
	self assert: correctionUI currentWord = 'itt'
	