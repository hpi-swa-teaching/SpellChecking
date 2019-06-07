as yet unclassified
testIsUnEqual
	| language otherLanguage |
	language := SPCHunspellLanguage new.
	language dictionaryPath: '/abc'.
	language affixPath: '/NotThere'.
	otherLanguage := SPCHunspellLanguage new.
	otherLanguage dictionaryPath: '/There'.
	otherLanguage affixPath: '/NotThere'.
	self deny: (language =  otherLanguage).
	self deny: (language = self)
	