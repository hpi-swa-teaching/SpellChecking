spellchecking
addWordToDictionary: aString
	| customStream customStreamSource wordCount newStream wordAlreadyKnown currentLines currentLine |
	wordAlreadyKnown := false.
	customStreamSource := (FileStream fileNamed: SPCSpellChecker defaultCustomDictionaryPath do: [ :each | each contents]).
	customStream := customStreamSource readStream.
	currentLines := OrderedCollection new.
	[customStream atEnd] whileFalse: [
		currentLine := customStream nextLine.
		(currentLine = aString) ifTrue: [
			wordAlreadyKnown := true	
		].
		currentLines add: currentLine.
	].
	customStream close.
	"Make sure there is a word number in the input file."
	currentLines at: 1 ifAbsentPut: 0.
	(wordAlreadyKnown) ifFalse: [
		wordCount := (((currentLines at: 1) asInteger) + 1) asString.
		newStream := (FileStream forceNewFileNamed: SPCSpellChecker defaultCustomDictionaryPath ).
		newStream nextPutAll: wordCount.
		currentLines add: aString.
		newStream lf.
		(2 to: currentLines size) do: [ :i |
			newStream nextPutAll: (currentLines at: i) utf8Encoded.
			newStream lf.
		].
		newStream nextPutAll: aString.
		newStream close
	]