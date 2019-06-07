as yet unclassified
testIsEqual
	| language otherLanguage |
	language := SPCHunspellLanguage new.
	language dictionaryPath: '/There'.
	language affixPath: '/NotThere'.
	otherLanguage := SPCHunspellLanguage new.
	otherLanguage dictionaryPath: '/There'.
	otherLanguage affixPath: '/NotThere'.
	self assert: (language =  otherLanguage)
	