testing
testAddDictionary

	hunspell := HunspellAPI new.
	self deny: (hunspell isWordCorrect: 'Schnee').

	hunspell addDictionary: 'de_DE.dic'.
	
	self assert: (hunspell isWordCorrect: 'Schnee')