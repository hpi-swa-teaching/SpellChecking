accessing
removeLanguage: aSPCHunspellLanguage
	self loadedLanguages remove: aSPCHunspellLanguage.
	self class notifyObservers: #loadedLanguages