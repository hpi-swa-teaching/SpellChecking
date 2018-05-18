as yet unclassified
privateStyle: aText

	super privateStyle: aText.
	self class spellCheckingEnabled ifTrue: [
	self highlightSpellingMistakes: (self mistakenWordsIn: aText string) in: aText]