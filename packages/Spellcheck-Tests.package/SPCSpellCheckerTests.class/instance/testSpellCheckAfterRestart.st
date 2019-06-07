testing
testSpellCheckAfterRestart

	| instance language |
	language := SPCHunspellLanguage new.
	language dictionaryPath: '/notThere'.
	language affixPath: '/notThere'.
	
	SPCSpellChecker instance loadedLanguages add: language.
	SPCSpellChecker startUp: true.
	self shouldnt: [instance := SPCSpellChecker instance] raise: Error.
	self assert: (SPCSpellChecker instance dictionaryPath = '/notThere') not.
	self assert: (SPCSpellChecker instance affixPath = '/notThere') not