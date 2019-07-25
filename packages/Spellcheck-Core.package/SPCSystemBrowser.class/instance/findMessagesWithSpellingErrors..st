spellchecking
findMessagesWithSpellingErrors: aDictionary	
	
	^ aDictionary select: [ :aMethodSourceCode |
			(SPCSpellChecker instance misspelledWordsIn: aMethodSourceCode asString) notEmpty
	]