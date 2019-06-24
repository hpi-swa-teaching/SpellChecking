preferences
spellingMistakeColorProportion: aNumber

	((aNumber < 0) or: (aNumber > 100)) ifFalse: [
		SpellingMistakeColorProportion := aNumber
	].