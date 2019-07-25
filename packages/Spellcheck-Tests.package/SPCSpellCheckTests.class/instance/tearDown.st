as yet unclassified
tearDown
	SPCSpellChecker instance loadedLanguages: nil.
	SPCTextStyler spellCheckingEnabled: originalStateSpellcheck.
	SPCSpellChecker loadedLanguages: originalStateLoadedLanguages