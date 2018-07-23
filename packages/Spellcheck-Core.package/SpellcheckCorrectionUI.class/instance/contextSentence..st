accessing
contextSentence: aString
	
	contextSentence := aString.
	self alternatives: (SpellChecker instance suggestionsFor: self currentWord);
		changed: #contextSentence