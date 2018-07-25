dictionary loading
loadLanguage

	self spellchecker 
		dictionaryPath: self dictionaryPath name;
		affixPath: self affixPath name;
		reloadHunspellHandle;
		reloadAddedWords