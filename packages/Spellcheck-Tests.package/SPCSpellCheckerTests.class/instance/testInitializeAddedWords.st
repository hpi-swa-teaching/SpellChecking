testing
testInitializeAddedWords
	spellChecker addedWords: nil.
	self assert: (spellChecker addedWords = nil).
	spellChecker initializeAddedWords.
	self assert: (spellChecker addedWords isEmpty)