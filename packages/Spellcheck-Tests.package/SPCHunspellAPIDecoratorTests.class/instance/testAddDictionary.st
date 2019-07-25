as yet unclassified
testAddDictionary

	SPCSpellChecker loadedLanguages: nil.
	decorator := SPCHunspellAPI instance.
	self deny: (decorator isWordCorrect: germanWord).

	decorator addDictionary: self class germanDictionary.
	
	self assert: (decorator isWordCorrect: germanWord)
