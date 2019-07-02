spellchecking
addWordToDictionary: aString
	| customStream wordCount newStream |
	customStream := (FileStream fileNamed: SPCSpellChecker defaultCustomDictionaryPath do: [ :each | each contents. ]) readStream.
	wordCount := ((customStream nextLine asInteger) + 1) asString.
	newStream := (FileStream forceNewFileNamed: SPCSpellChecker defaultCustomDictionaryPath ).
	newStream nextPutAll: wordCount.
	newStream lf.
	[customStream atEnd] whileFalse: [
		newStream nextPutAll: customStream nextLine.
		newStream lf.
	].
	newStream nextPutAll: aString.
	newStream close.