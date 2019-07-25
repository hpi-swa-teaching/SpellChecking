testing
testAddWordsToDictionaryWithOnlyStrings
	SPCTextParser parseStringsOnly: true.
	
	self deny: (spellChecker isSpelledCorrectly: wrongWord).
	
	spellChecker addWordToDictionary: wrongWord.
	self assert: (spellChecker isSpelledCorrectly: wrongWord).
	
	spellChecker removeWordFromDictionary: wrongWord