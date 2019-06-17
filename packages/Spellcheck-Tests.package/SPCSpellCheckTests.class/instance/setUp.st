as yet unclassified
setUp
	originalStateSpellcheck := SPCTextStyler spellCheckingEnabled.
	SPCTextStyler spellCheckingEnabled: true.
	originalStateLoadedLanguages := SPCSpellChecker loadedLanguages