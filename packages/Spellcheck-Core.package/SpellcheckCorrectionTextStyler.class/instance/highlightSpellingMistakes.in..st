as yet unclassified
highlightSpellingMistakes: aCollection in: aText

	aText addAttribute: (TextColor color: Color gray). 
	aCollection keysAndValuesDo: [ :aKey :aValue | aText 
		"addAttribute: TextEmphasis underlined from: aKey to: aValue;"
		addAttribute: (TextColor color: Color black) from: aKey to: aValue ]
					
		