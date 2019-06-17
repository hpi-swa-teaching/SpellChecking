testing
testSpellCheckAfterRestartKeepsLanguages

	SPCSpellChecker loadedLanguages: Set new.
	SPCSpellChecker loadLanguage: SPCHunspellLanguage german.
	SPCHunspellLanguage default do: [ :each | SPCSpellChecker loadedLanguages add: each].
	
	SPCSpellChecker startUp: true.
	self deny: ((SPCSpellChecker loadedLanguages like: SPCHunspellLanguage german) isNil).
	SPCHunspellLanguage default do: [ :each | self deny: ((SPCSpellChecker loadedLanguages like: each) isNil) ]
	