dictionary loading
unloadLanguage: languageName
	| language |
		language := SPCHunspellLanguage new.
		language affixPath: (self affixPath: languageName).
		language dictionaryPath: (self dictionaryPath:languageName).
		language languageName: languageName.
		(self spellchecker loadedLanguages) do: [ :each | (each = language) ifTrue: [ self spellchecker loadedLanguages remove: language ] ].
		
		self spellchecker reloadHunspellHandle;
			reloadAddedWords.
		