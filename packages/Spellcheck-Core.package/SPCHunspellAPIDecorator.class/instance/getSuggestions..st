spellchecking
getSuggestions: aString

	| suggestionCollection |
	
	suggestionCollection := OrderedCollection new.
	self instances do: [ :currentInstance | 
			(currentInstance getSuggestions: aString) do: [ :each |
				suggestionCollection add: each
			]
		 ].
	^ suggestionCollection sorted: [ :suggestion1 :suggestion2 | (self calculateLevenshteinDistance: suggestion1 toString: aString) < (self calculateLevenshteinDistance: suggestion2 toString: aString ) ]