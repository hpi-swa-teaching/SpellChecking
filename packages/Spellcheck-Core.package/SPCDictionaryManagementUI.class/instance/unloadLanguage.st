dictionary loading
unloadLanguage
	| language |
	
	(self selectedLanguage) ifNotNil: [
		language := SPCHunspellLanguage new.
		language affixPath: self affixPath name.
		language dictionaryPath: self dictionaryPath name.
		(self spellchecker loadedLanguages) do: [ :each | (each = language) ifTrue: [ self spellchecker loadedLanguages remove: language ] ].
		self spellchecker reloadHunspellHandle;
			reloadAddedWords.
		]