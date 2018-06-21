as yet unclassified
removeFromIgnoredWords
	selectedWord ifNotNil: 
		[SpellChecker instance removeWordFromDictionary: selectedWord.
		self changed: #ignoredWords].