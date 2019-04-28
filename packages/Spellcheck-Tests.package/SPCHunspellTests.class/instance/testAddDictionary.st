testing
testAddDictionary

	"self deny: (hunspell isWordCorrect: germanWord)."

	"hunspell addDictionary: self class germanDictionary."

	"self assert: (hunspell isWordCorrect: germanWord)"
	
	Transcript showln: 'Hallo.'
