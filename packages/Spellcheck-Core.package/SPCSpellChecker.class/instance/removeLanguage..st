accessing
removeLanguage: aSPCHunspellLanguage
	self loadedLanguages remove: aSPCHunspellLanguage.
	self reloadHunspellHandle.
	self class notifyObservers: #loadedLanguages