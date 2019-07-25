spellchecking
saveWordsToCustomDictionary: aCollection
	
	| newStream wordCount |
	
	wordCount := (((aCollection at: 1) asInteger) + 1) asString.
		newStream := (FileStream forceNewFileNamed: SPCSpellChecker defaultCustomDictionaryPath ).
		newStream nextPutAll: wordCount.
		newStream lf.
		(2 to: aCollection size) do: [ :i |
			newStream nextPutAll: (aCollection at: i) utf8Encoded.
			newStream lf.
		].
		newStream close 