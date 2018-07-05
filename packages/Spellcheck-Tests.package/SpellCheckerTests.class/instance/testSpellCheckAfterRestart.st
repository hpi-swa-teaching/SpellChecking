testing
testSpellCheckAfterRestart

	| instance |
	SpellChecker startUp: true.
	self shouldnt: [instance := SpellChecker instance] raise: Error