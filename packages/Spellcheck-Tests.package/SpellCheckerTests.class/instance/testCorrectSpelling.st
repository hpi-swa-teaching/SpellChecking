as yet unclassified
testCorrectSpelling

	self assert: (spellChecker isSpelledCorrectly: 'Apple').
	self assert: (spellChecker isSpelledCorrectly: 'Apple_pie') not.
	self assert: (spellChecker isSpelledCorrectly: 'ApplePie')