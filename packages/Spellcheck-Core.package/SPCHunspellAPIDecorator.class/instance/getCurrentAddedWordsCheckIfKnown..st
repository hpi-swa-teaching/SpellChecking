spellchecking
getCurrentAddedWordsCheckIfKnown: aString

	| currentLine currentLines customStream customStreamSource wordAlreadyKnown collection |

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
	collection := OrderedCollection new.
	collection add: currentLines.
	collection add: wordAlreadyKnown.
	^ collection