as yet unclassified
setUp
	originalStateSpellcheck := SPCTextStyler spellCheckingEnabled.
	SPCTextStyler spellCheckingEnabled: true.
	originalStateOnlyInStrings := SPCTextParser parseStringsOnly.
	SPCTextParser parseStringsOnly: false