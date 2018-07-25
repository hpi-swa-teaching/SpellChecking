accessing
usedLanguage

	| pathSegments indexOfLanguageName |
	
	pathSegments := SPCSpellChecker instance dictionaryPath subStrings: FileDirectory slash.
	indexOfLanguageName := pathSegments size -1.
	^ pathSegments at: indexOfLanguageName