hunspell
reloadHunspellHandle

	self hunspell 
		destroyHandle;
		createHandle: self dictionaryPath affix: self affixPath