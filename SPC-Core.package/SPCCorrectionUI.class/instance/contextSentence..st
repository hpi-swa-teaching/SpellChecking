accessing
contextSentence: aString
	
	contextSentence := aString.
	self alternatives: (SPCSpellChecker instance suggestionsFor: self currentWord);
		changed: #contextSentence