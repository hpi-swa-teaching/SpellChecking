testing
testSpellCheckAfterRestart

	| instance language |
	language := SPCHunspellLanguage new.
	language dictionaryPath: '/notThere'.
	language affixPath: '/notThere'.
	
	SPCSpellChecker instance loadLanguage: language.
	SPCSpellChecker startUp: true.
	self shouldnt: [instance := SPCSpellChecker instance] raise: Error.