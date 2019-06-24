preferences
spellingMistakeColorProportion

	<preference: 'Spelling Mistake Color Proportion' 
		category: 'SpellChecking' 
		description: 'Percentage Value, determines the intensity of the SpellingMistake Color'
		type: #Number>
	^ SpellingMistakeColorProportion ifNil: [super spellingMistakeColorProportion]