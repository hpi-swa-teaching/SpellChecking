as yet unclassified
inputText: aText

	inputText := aText.
	wrongWords := SpellChecker instance mistakenWordsIn: aText string.
	currentKey := wrongWords keys detect: [ :a | true ] ifNone: [self clear. ^self]. "gets first element"
	self wrongWordText: (aText string copyFrom: currentKey to: (wrongWords at: currentKey))
	