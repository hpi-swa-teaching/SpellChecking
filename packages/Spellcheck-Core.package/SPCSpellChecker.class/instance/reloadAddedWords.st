as yet unclassified
reloadAddedWords
	
	self addedWords do: [:each | self hunspell addWordToDictionary: each]