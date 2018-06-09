as yet unclassified
inputText: aText

	| parser |

	inputText := aText.	
	wrongWords := SpellChecker instance mistakenWordsIn: aText string.
	currentKey := wrongWords keys detect: [ :a | true ] ifNone: [self clear. ^self]. "gets first element"
	currentWord := aText string copyFrom: currentKey to: (wrongWords at: currentKey).

	parser := SpellingTextParser new.
	self wrongWordText: (parser getSentenceContextOfWordAt: currentKey within: aText string).
	
	