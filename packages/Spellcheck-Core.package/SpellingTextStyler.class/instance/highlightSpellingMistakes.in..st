as yet unclassified
highlightSpellingMistakes: aCollection in: aText

	aCollection keysAndValuesDo: [ :aKey :aValue | aText 
		addAttribute: TextEmphasis underlined from: aKey to: aValue;
		addAttribute: (TextColor color: Color orange) from: aKey to: aValue ]
					
		