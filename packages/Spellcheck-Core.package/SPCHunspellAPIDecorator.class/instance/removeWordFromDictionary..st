spellchecking
removeWordFromDictionary: aString
	| customStream customStreamSource wordCount newStream wordIsKnown nextWord |
	wordIsKnown := false.
	customStreamSource := (FileStream fileNamed: SPCSpellChecker defaultCustomDictionaryPath do: [ :each | each contents. ]).
	customStream := customStreamSource readStream.
	[customStream atEnd] whileFalse: [
		(customStream nextLine = aString) ifTrue: [
			wordIsKnown := true	
		]
	].
	(wordIsKnown) ifTrue: [
		customStream := customStreamSource readStream.
		wordCount := ((customStream nextLine asInteger) - 1) asString.
		newStream := (FileStream forceNewFileNamed: SPCSpellChecker defaultCustomDictionaryPath ).
		newStream nextPutAll: wordCount.
		newStream lf.
		[customStream atEnd] whileFalse: [
			nextWord := customStream nextLine.
			(nextWord = aString) ifFalse:[
				newStream nextPutAll: nextWord.
				newStream lf				
			]
		].
		newStream close.
	]