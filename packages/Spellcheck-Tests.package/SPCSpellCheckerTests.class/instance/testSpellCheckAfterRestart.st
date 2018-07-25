testing
testSpellCheckAfterRestart

	| instance |
	
	SPCSpellChecker startUp: true.
	self shouldnt: [instance := SPCSpellChecker instance] raise: Error