spellchecking
removeWordFromDictionary: aString
	| customStream wordCount newStream nextWord |
	customStream := (FileStream fileNamed: SPCSpellChecker defaultCustomDictionaryPath do: [ :each | each contents. ]) readStream.
	wordCount := ((customStream nextLine asInteger) - 1) asString.
	newStream := (FileStream forceNewFileNamed: SPCSpellChecker defaultCustomDictionaryPath ).
	newStream nextPutAll: wordCount.
	newStream lf.
	[customStream atEnd] whileFalse: [
		nextWord := customStream nextLine.
		(nextWord = aString) ifFalse: [
			newStream nextPutAll: nextWord.
			newStream lf.
		].
	].
	newStream close.