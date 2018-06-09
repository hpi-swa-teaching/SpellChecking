as yet unclassified
wrongWordText: aString
	
	contextSentence := aString.
	self alternatives: (SpellChecker instance suggestionsFor: currentWord). 
	self changed: #wrongWordText