testing
testSpellCheckAfterRestartKeepsLanguages

	SPCSpellChecker loadedLanguages: Set new.
	SPCSpellChecker loadedLanguages add: SPCHunspellLanguage german.
	SPCSpellChecker loadedLanguages add: SPCHunspellLanguage default.
	
	SPCSpellChecker startUp: true.
	self deny: ((SPCSpellChecker loadedLanguages like: SPCHunspellLanguage german) isNil).
	self deny: ((SPCSpellChecker loadedLanguages like: SPCHunspellLanguage default) isNil).