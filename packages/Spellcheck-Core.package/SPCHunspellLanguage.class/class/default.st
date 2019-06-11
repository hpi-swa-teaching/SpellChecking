as yet unclassified
default
	| language |
	language := SPCHunspellLanguage new.
	language dictionaryPath: SPCSpellChecker defaultDictionaryPath.
	language affixPath: SPCSpellChecker defaultAffixPath.
	^ language