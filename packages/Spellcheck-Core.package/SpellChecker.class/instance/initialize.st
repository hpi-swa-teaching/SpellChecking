as yet unclassified
initialize 

	Smalltalk addToStartUpList: self class.
	hunspell := HunspellAPI new.
	parser := SpellingTextParser new.
	AddedWords ifNil:[AddedWords := Set new].
	self reloadAddedWords