spellchecking
addWordToDictionary: aString
	| customStream customStreamSource wordCount newStream wordAlreadyKnown |
	wordAlreadyKnown := false.
	customStreamSource := (FileStream fileNamed: SPCSpellChecker defaultCustomDictionaryPath do: [ :each | each contents]).
	customStream := customStreamSource readStream.
	[customStream atEnd] whileFalse: [
		(customStream nextLine = aString) ifTrue: [
			wordAlreadyKnown := true	
		]
	].
	(wordAlreadyKnown) ifFalse: [
		customStream := customStreamSource readStream.
		wordCount := ((customStream nextLine asInteger) + 1) asString.
		newStream := (FileStream forceNewFileNamed: SPCSpellChecker defaultCustomDictionaryPath ).
		newStream nextPutAll: wordCount.
		newStream lf.
		[customStream atEnd] whileFalse: [
			newStream nextPutAll: customStream nextLine.
			newStream lf.
		].
		newStream nextPutAll: aString.
		newStream close
	]