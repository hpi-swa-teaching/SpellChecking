as yet unclassified
testShouldCheckSpelling

	self assert: ((spellChecker shouldCheckSpelling: 'Aplpe') = true).
	self assert: ((spellChecker shouldCheckSpelling: 'Apple_pie') = false)