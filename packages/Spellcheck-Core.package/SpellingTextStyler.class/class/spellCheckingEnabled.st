as yet unclassified
spellCheckingEnabled

	<preference: 'SpellChecking in TextMorphs' 
		category: 'SpellChecking' 
		description: 'If true, spelling mistakes are highlighted' 
		type: #Boolean>
	^ SpellCheckingEnabled ifNil: [SpellCheckingEnabled := false]