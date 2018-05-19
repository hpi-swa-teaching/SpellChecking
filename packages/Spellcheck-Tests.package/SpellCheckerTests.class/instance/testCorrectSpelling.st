as yet unclassified
testCorrectSpelling

	self assert: ((spellChecker isSpelledCorrectly: 'Apple') = true).
	self assert: ((spellChecker isSpelledCorrectly: 'Apple_pie') = false).
	self assert: ((spellChecker isSpelledCorrectly: 'ApplePie') = true)