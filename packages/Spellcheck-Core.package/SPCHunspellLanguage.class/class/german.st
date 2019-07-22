as yet unclassified
german

	| language |

	language := SPCHunspellLanguage new.
	language dictionaryPath: SPCSpellChecker defaultGermanDictionaryPath.
	language affixPath: SPCSpellChecker defaultGermanAffixPath.
	language languageName: 'german'.
	^ language