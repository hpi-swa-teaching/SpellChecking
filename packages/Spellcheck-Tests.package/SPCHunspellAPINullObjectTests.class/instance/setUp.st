as yet unclassified
setUp
	nullObject := SPCHunspellAPINullObject instance.
	originalStateSpellcheck := SPCTextStyler spellCheckingEnabled.
	SPCTextStyler spellCheckingEnabled: false.
	originalStateOnlyInStrings := SPCTextParser parseStringsOnly.
	SPCTextParser parseStringsOnly: false