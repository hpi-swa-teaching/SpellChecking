as yet unclassified
removeFromIgnoredWords

	self selectedWord ifNotNil: 
		[SPCSpellChecker instance removeWordFromDictionary: self selectedWord.
		self changed: #ignoredWords]