hunspell
reloadHunspellHandle
	self hunspell ifNotNil: [
		self hunspell installDependencies;
		destroyHandle
	].
	SPCTextStyler spellCheckingEnabled ifTrue: [
		self hunspell: SPCHunspellAPI instance.
		self hunspell createHandle: self dictionaryPath affix: self affixPath
	]
	ifFalse: [
		self hunspell: SPCHunspellAPINullObject instance	
	]