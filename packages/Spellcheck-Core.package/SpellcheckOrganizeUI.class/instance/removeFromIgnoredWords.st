as yet unclassified
removeFromIgnoredWords

	self selectedWord ifNotNil: 
		[SpellChecker instance removeWordFromDictionary: self selectedWord.
		self changed: #ignoredWords]