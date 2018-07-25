ignored words
removeFromIgnoredWords

	self selectedWord ifNotNil: 
		[self spellchecker removeWordFromDictionary: self selectedWord.
		self changed: #ignoredWords]