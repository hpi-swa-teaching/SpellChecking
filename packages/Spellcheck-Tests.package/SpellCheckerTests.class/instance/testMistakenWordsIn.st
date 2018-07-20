testing
testMistakenWordsIn

	| result |
	
	result := spellChecker mistakenWordsIn: textWithMistake.
	self assert: (result at: wrongWordStartIndex) = wrongWordEndIndex