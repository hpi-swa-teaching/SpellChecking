testing
testSpellcheckingMultipleLanguages

	
	SPCSpellChecker instance loadedLanguages:nil.
	SPCSpellChecker instance reloadHunspellHandle.
	self assert: (SPCSpellChecker instance isSpelledCorrectly: englishWord).
	self deny: (SPCSpellChecker instance isSpelledCorrectly: germanWord).
	
	SPCSpellChecker instance loadLanguage: SPCHunspellLanguage german.
	self assert: (SPCSpellChecker instance isSpelledCorrectly: englishWord).
	self assert: (SPCSpellChecker instance isSpelledCorrectly: germanWord)