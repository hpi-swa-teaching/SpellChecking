system startup
startUp: resuming
	resuming ifTrue: [
		self instance loadedLanguages: nil.
		self instance reloadHunspellHandle.
		self instance reloadAddedWords].
	
	^ super startUp: resuming