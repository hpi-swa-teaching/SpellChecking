as yet unclassified
inputText: aText

	inputText := aText.
	wrongWords := (SpellChecker instance mistakenWordsIn: aText string).
	keyArray := wrongWords keys asSortedCollection asOrderedCollection.
	
	self displayCurrentWrongWord
	