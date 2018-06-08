as yet unclassified
wrongWordText: aString
	
	currentWord := aString.
	self alternatives: (SpellChecker instance suggestionsFor: currentWord).
	self changed: #wrongWordText