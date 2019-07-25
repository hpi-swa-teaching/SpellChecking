as yet unclassified
setUp
	originalState := SPCTextStyler spellCheckingEnabled.
	SPCTextStyler spellCheckingEnabled: true.
	originalStateLoadedLanguages := SPCSpellChecker loadedLanguages