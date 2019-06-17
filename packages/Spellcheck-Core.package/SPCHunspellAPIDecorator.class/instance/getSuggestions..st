spellchecking
getSuggestions: aString

	| suggestionCollection |
	
	suggestionCollection := OrderedCollection new.
	self instances do: [ :currentInstance | 
			(currentInstance getSuggestions: aString) do: [ :each |
				suggestionCollection add: each
			].
		 ].
	^ suggestionCollection