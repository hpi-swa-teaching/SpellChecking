as yet unclassified
reloadHunspellHandle

	self hunspell 
		destroyHandle;
		createHandle: self dictionaryPath affix: self affixPath