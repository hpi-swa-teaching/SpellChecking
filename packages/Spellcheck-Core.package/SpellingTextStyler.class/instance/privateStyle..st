as yet unclassified
privateStyle: aText

	self unstyle: aText.  
	self workspace ifNotNil:[Workspace shouldStyle ifTrue: [super privateStyle: aText]]
	ifNil: [SHTextStylerST80 syntaxHighlightingAsYouType ifTrue: [super privateStyle: aText]].
	self class spellCheckingEnabled ifTrue: [
	self highlightSpellingMistakes: (spellChecker mistakenWordsIn: aText string) in: aText]