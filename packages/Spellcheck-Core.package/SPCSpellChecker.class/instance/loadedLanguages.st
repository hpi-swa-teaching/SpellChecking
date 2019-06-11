accessing
loadedLanguages
	self class loadedLanguages ifNil: [ self loadedLanguages: Set new. self loadedLanguages add: SPCHunspellLanguage default ].
	^ self class loadedLanguages