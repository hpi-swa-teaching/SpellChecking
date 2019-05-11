as yet unclassified
parseStringsOnly
	<preference: 'Parse only strings and comments' 
		category: 'SpellChecking' 
		description: 'If true, spelling mistakes are only highlighted in Strings in Text and in Comments, but not in class or variable names or the rest of the code.' 
		type: #Boolean>
	^ parseStringsOnly ifNil: [parseStringsOnly := false]