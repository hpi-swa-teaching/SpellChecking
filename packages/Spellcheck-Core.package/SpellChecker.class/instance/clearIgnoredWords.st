as yet unclassified
clearIgnoredWords
	
	AddedWords do: [:each | hunspell removeWordFromDictionary: each ].
	AddedWords := Set new.