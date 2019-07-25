as yet unclassified
english

	| language |

	language := SPCHunspellLanguage new.
	language dictionaryPath: SPCSpellChecker defaultDictionaryPath.
	language affixPath: SPCSpellChecker defaultAffixPath.
	language languageName: 'english'.
	^ language