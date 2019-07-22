accessing
loadedLanguages

	self class loadedLanguages ifNil: [
		self loadedLanguages: SPCHunspellLanguage default.
	 ].
	^ self class loadedLanguages