spellchecking
getSuggestions: aString

	| suggestions |
	
	(self getSuggestionList: aString) in: [:suggestionList | 
		suggestions := suggestionList asCollection.
		self freeSuggestionList: suggestionList].
	^ suggestions
	