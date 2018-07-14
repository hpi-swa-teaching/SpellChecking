as yet unclassified
reloadHunspellHandle

	self hunspell destroyHandle. 
	self hunspell createHandle: self dictionaryPath affix: self affixPath