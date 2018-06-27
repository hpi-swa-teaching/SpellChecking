as yet unclassified
inputText: aText

	inputText := aText asText.	"might be a string"
	wrongWords := (SpellChecker instance mistakenWordsIn: aText string).
	keyArray := wrongWords keys asSortedCollection asOrderedCollection.
	
	self displayCurrentWrongWord
	