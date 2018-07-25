testing
testMistakenWordsIn

	| result |
	
	result := spellChecker misspelledWordsIn: textWithMistake.
	self assert: (result at: wrongWordStartIndex) = wrongWordEndIndex