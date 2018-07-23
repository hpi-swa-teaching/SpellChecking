accessing
usedLanguage

	| pathSegments indexOfLanguageName |
	
	pathSegments := SpellChecker instance dictionaryPath subStrings: FileDirectory slash.
	indexOfLanguageName := pathSegments size -1.
	^ pathSegments at: indexOfLanguageName