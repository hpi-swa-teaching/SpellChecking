accessing
loadLanguage: aSPCHunspellLanguage
	self loadedLanguages add: aSPCHunspellLanguage.
	self class notifyObservers: #loadedLanguages