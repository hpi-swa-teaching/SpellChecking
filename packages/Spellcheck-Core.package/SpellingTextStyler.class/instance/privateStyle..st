as yet unclassified
privateStyle: aText

	super privateStyle: aText.  "for some reason we have to style the text first in all cases"
	self workspace ifNotNil:[Workspace shouldStyle ifFalse:[self unstyle: aText]]
	ifNil: [SHTextStylerST80 syntaxHighlightingAsYouType ifFalse:[self unstyle: aText]].
	self class spellCheckingEnabled ifTrue: [
	self highlightSpellingMistakes: (spellChecker mistakenWordsIn: aText string) in: aText]