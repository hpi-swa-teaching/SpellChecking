as yet unclassified
initialize 

	hunspell := HunspellAPI new.
	parser := SpellingTextParser new.
	AddedWords ifNil:[AddedWords := Set new].
	self reloadAddedWords.