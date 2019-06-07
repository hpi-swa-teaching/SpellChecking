dictionary loading
loadLanguage

	(self selectedLanguage) ifNotNil: [
		self spellchecker 
			dictionaryPath: self dictionaryPath name;
			affixPath: self affixPath name;
			reloadHunspellHandle;
			reloadAddedWords.
		]