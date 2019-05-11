hunspell
reloadHunspellHandle
	self hunspell ifNotNil: [
		self hunspell destroyHandle
	].
	SPCTextStyler spellCheckingEnabled ifTrue: [
		self hunspell: SPCHunspellAPI new.
		self hunspell createHandle: self dictionaryPath affix: self affixPath
	]
	ifFalse: [
		self hunspell: SPCHunspellAPINullObject new	
	]