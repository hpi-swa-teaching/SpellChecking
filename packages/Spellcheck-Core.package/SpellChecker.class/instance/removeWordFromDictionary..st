as yet unclassified
removeWordFromDictionary: aString

	AddedWords remove: aString ifAbsent: [].
	hunspell removeWordFromDictionary: aString