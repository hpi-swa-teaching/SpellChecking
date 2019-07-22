accessing
loadLanguage: aSPCHunspellLanguage
	self loadedLanguages add: aSPCHunspellLanguage.
	self reloadHunspellHandle.
	self class notifyObservers: #loadedLanguages