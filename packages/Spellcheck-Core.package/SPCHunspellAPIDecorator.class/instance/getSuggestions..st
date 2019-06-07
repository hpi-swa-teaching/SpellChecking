spellchecking
getSuggestions: aString

	^ self instances inject: OrderedCollection new into: [ :currentSuggestions :currentInstance | currentSuggestions add: (currentInstance getSuggestions: aString)]