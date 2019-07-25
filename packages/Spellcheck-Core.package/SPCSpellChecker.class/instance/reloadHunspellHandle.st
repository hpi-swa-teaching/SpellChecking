hunspell
reloadHunspellHandle

	self hunspell ifNotNil: [
		self hunspell installDependencies;
		destroyHandle
	].
	SPCTextStyler spellCheckingEnabled ifTrue: [
		self hunspell: SPCHunspellAPI instance.
		self loadedLanguages do: [ :language |
			self addLanguage: language dictionaryPath withAffix: language affixPath
		]
	]
	ifFalse: [
		self hunspell: SPCHunspellAPINullObject instance	
	]