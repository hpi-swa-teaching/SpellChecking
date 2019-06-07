accessing
loadedLanguages
	loadedLanguages ifNil: [ loadedLanguages := Set new. loadedLanguages add: SPCHunspellLanguage default ].
	^ loadedLanguages