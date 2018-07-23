styling
highlightSpellingMistakes: aText

	self class spellCheckingEnabled ifTrue: [
		self highlight: (self spellChecker mistakenWordsIn: aText string) in: aText]