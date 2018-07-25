as yet unclassified
clearIgnoredWords
	
	self addedWords do: [:each | self hunspell removeWordFromDictionary: each ].
	self addedWords: Set new