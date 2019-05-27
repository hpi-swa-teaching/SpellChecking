testing
testSpellCheckAfterRestart

	| instance |
	SPCSpellChecker instance dictionaryPath: '/notThere';
	affixPath: '/notThere'.
	SPCSpellChecker startUp: true.
	self shouldnt: [instance := SPCSpellChecker instance] raise: Error.
	self assert: (SPCSpellChecker instance dictionaryPath = '/notThere') not.
	self assert: (SPCSpellChecker instance affixPath = '/notThere') not