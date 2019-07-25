as yet unclassified
custom

	| language |

	language := SPCHunspellLanguage new.
	language dictionaryPath: SPCSpellChecker defaultCustomDictionaryPath.
	language affixPath: SPCSpellChecker defaultCustomAffixPath.
	language languageName: 'custom'.
	^ language