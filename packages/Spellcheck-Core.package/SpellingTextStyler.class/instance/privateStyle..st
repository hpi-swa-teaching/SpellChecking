as yet unclassified
privateStyle: aText

	|spellingMistakes|
	super privateStyle: aText.
	self class spellCheckingEnabled ifTrue: [
		spellingMistakes := spellChecker mistakenWordsIn: aText string.
		self highlightSpellingMistakes: spellingMistakes in: aText]