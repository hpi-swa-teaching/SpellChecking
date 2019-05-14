as yet unclassified
setUp
	nullObject := SPCHunspellAPINullObject new.
	originalStateSpellcheck := SPCTextStyler spellCheckingEnabled.
	SPCTextStyler spellCheckingEnabled: false.
	originalStateOnlyInStrings := SPCTextParser parseStringsOnly.
	SPCTextParser parseStringsOnly: false