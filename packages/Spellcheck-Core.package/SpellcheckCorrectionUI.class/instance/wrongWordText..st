accessing
wrongWordText: aString
	
	currentWord := aString.
	self alternatives: (SpellChecker instance suggestionsFor: currentWord).
	self changed: #wrongWordText