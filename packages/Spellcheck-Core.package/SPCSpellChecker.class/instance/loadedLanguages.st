accessing
loadedLanguages
	self class loadedLanguages ifNil: [ 
		self loadedLanguages: Set new. 
		self hunspell instances: Set new.
		SPCHunspellLanguage default do: [ :language | 
			self loadedLanguages add: language.
			self hunspell addDictionary: language dictionaryPath andAffix: language affixPath].
	 ].
	^ self class loadedLanguages