testing
testAddDictionary

	SPCSpellChecker loadedLanguages: nil.

	self deny: (hunspell isWordCorrect: germanWord).

	hunspell addDictionary: self class germanDictionary.
	
	self assert: (hunspell isWordCorrect: germanWord)
