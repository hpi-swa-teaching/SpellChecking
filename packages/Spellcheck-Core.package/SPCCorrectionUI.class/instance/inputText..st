accessing
inputText: aText

	"might be a string"
	inputText := aText asText.	
	self wrongWords: (SPCSpellChecker instance misspelledWordsIn: aText string).
	self keyArray: self wrongWords keys asSortedCollection asOrderedCollection.
	
	self inputText ifNotEmpty: [self displayCurrentWrongWord]