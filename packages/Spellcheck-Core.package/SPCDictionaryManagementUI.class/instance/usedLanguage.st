accessing
usedLanguage

	| pathSegments indexOfLanguageName languages |
	
	languages := ' '.
	self spellchecker loadedLanguages do: [ :language |
		pathSegments := (language dictionaryPath) subStrings: FileDirectory slash.
		indexOfLanguageName := pathSegments size -1.
		languages := (pathSegments at: indexOfLanguageName)
	].
	^ languages