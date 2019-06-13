accessing
loadedLanguages
	self class loadedLanguages ifNil: [ 
		self loadedLanguages: Set new. self loadedLanguages add: SPCHunspellLanguage default.
		self hunspell instances: Set new.
		self hunspell addDictionary: (SPCHunspellLanguage default dictionaryPath) andAffix: (SPCHunspellLanguage default affixPath)
	 ].
	^ self class loadedLanguages