accessing
wrongWordText: aString
	
	contextSentence := aString.
	self alternatives: (SpellChecker instance suggestionsFor: self currentWord). 
	self changed: #wrongWordText