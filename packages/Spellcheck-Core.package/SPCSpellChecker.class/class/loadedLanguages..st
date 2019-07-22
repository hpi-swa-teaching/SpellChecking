initialize-release
loadedLanguages: aSet

	loadedLanguages := aSet.
	self instance reloadHunspellHandle.
	self notifyObservers: #loadedLanguages