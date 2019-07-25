as yet unclassified
squeak

	| language |

	language := SPCHunspellLanguage new.
	language dictionaryPath: SPCSpellChecker defaultSqueakDictionaryPath.
	language affixPath: SPCSpellChecker defaultSqueakAffixPath.
	language languageName: 'squeak'.
	^ language