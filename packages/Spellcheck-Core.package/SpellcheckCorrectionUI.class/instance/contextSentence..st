accessing
contextSentence: aString
	
	contextSentence := aString.
	self alternativeWords: (SpellChecker instance suggestionsFor: self currentWord);
		changed: #contextSentence