as yet unclassified
highlightSpellingMistakes: aCollection in: aText
 
	aCollection keysAndValuesDo: [ :aKey :aValue | aText 
		addAttribute: TextEmphasis bold from: aKey to: aValue ]				
		