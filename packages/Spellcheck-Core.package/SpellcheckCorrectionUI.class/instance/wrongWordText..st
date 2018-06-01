as yet unclassified
wrongWordText: aText
	
	wrongWordText := aText.
	self alternatives: (SpellChecker instance suggestionsFor: wrongWordText).
	self changed: #wrongWordText