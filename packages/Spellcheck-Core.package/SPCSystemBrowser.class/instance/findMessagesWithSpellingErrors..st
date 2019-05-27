spellchecking
findMessagesWithSpellingErrors: aDictionary
	| originalStateOnlyStrings originalStateSpellcheck methodsWithErrors |
	"User Story: Only check Strings + Comments. Also, SpellChecking has to be enabled."
	originalStateOnlyStrings := SPCTextParser parseStringsOnly.
	SPCTextParser parseStringsOnly: true.
	
	originalStateSpellcheck := SPCTextStyler spellCheckingEnabled.
	SPCTextStyler spellCheckingEnabled: true.
	
	
	methodsWithErrors := aDictionary select: [ :aMethodSourceCode |
			(SPCSpellChecker instance misspelledWordsIn: aMethodSourceCode asString) notEmpty
	].
	
	SPCTextStyler spellCheckingEnabled: originalStateSpellcheck.
	SPCTextParser parseStringsOnly: originalStateOnlyStrings.
	^ methodsWithErrors