dictionary loading
loadLanguage
	| language |
	
	(self selectedLanguage) ifNotNil: [
		language := SPCHunspellLanguage new.
		language affixPath: self affixPath name.
		language dictionaryPath: self dictionaryPath name.
		self spellchecker 
			loadedLanguages add: language.
			self spellchecker reloadHunspellHandle;
			reloadAddedWords.
		]