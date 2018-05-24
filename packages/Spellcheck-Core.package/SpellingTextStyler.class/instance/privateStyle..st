as yet unclassified
privateStyle: aText
	super privateStyle: aText.
	self class spellCheckingEnabled ifTrue: [
	self highlightSpellingMistakes: (spellChecker mistakenWordsIn: aText string) in: aText]