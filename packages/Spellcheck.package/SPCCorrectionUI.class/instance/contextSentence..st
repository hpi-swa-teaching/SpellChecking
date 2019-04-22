accessing
contextSentence: aString
	
	contextSentence := aString.
	self alternativeWords: (SPCSpellChecker instance suggestionsFor: self currentWord);
		changed: #contextSentence