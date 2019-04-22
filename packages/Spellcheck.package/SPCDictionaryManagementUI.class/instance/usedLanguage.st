accessing
usedLanguage

	| pathSegments indexOfLanguageName |
	
	pathSegments := self spellchecker dictionaryPath subStrings: FileDirectory slash.
	indexOfLanguageName := pathSegments size -1.
	^ pathSegments at: indexOfLanguageName