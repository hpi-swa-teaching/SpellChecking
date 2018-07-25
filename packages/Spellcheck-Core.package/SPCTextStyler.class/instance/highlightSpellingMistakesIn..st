styling
highlightSpellingMistakesIn: aText

	self class spellCheckingEnabled ifTrue: [
		self highlight: (self spellChecker misspelledWordsIn: aText string) in: aText]