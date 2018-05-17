as yet unclassified
privateStyle: aText

	super privateStyle: aText.
	self class spellCheckingEnabled ifTrue: [
	self highlightSpellingMistakes: (self wordsWithAIn: aText string) in: aText]