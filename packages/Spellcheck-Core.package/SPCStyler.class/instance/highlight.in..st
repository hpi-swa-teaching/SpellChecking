styling
highlight: aCollection in: aText

	| originalColor |

	aCollection keysAndValuesDo: [ :aKey :aValue | 
		originalColor := self class getColorFromRunArray: (aText runs at: aKey).
		originalColor ifNil: [ originalColor := self class defaultColor ].
		aText 
			addAttribute: TextEmphasis underlined from: aKey to: aValue;
			addAttribute: (TextColor color: (self blendColor: originalColor withColor: self class spellingMistakeColor)) from: aKey to: aValue ]
					