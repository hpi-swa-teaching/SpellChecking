accessing
inputText: aText
	inputText := aText asText.	"might be a string"
	self wrongWords: (SPCSpellChecker instance misspelledWordsIn: aText string).
	self keyArray: self wrongWords keys asSortedCollection asOrderedCollection.
	
	self inputText ifNotEmpty: [self displayCurrentWrongWord]