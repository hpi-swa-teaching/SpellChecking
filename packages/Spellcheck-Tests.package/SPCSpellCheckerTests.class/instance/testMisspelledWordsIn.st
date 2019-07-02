testing
testMisspelledWordsIn

	| result |
	spellChecker parser parseStringsOnly: false.
	result := spellChecker misspelledWordsIn: textWithMistake.
	self assert: (result at: wrongWordStartIndex) = wrongWordEndIndex