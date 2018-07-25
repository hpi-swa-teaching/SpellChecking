dictionary and ignore list
reloadAddedWords
	
	self addedWords do: [:each | self hunspell addWordToDictionary: each]