as yet unclassified
testSuggestionSimilarity
	| suggestions redIndex edsIndex |
	SPCSpellChecker loadedLanguages: nil.
	decorator := SPCSpellChecker instance hunspell.
	suggestions := decorator getSuggestions: 'sed'.
	redIndex := suggestions indexOf: 'red' startingAt: 1.
	edsIndex := suggestions indexOf: 'eds' startingAt: 1.
	"Levenshtein distance of red is 1, of eds is 2. So red should be before sed."
	self assert: (redIndex < edsIndex)
	
	